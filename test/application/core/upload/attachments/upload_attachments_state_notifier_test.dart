import 'dart:async';
import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state_notifier.dart';
import 'package:manifiesto_mvp_app/core/extensions/file_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:mocktail/mocktail.dart';

abstract class TestUploadAttachmentsRepository {
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadAttachment(
    FileAttachmentAttached attachment,
  );

  Future<Either<UploadFileFailure, void>> deleteAttachment(String attachmentId);
}

class MockUploadAttachmentsRepository extends Mock implements TestUploadAttachmentsRepository {}

class TestUploadAttachmentsStateNotifier
    extends UploadAttachmentsStateNotifier<UploadAttachmentState> {
  TestUploadAttachmentsStateNotifier(
    super.state,
    this._repository, {
    required super.maxFileSizeMb,
    required super.maxAttachments,
  });

  final TestUploadAttachmentsRepository _repository;

  @override
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadAttachment(
    FileAttachmentAttached attachment,
  ) =>
      _repository.uploadAttachment(attachment);

  @override
  Future<Either<UploadFileFailure, void>> deleteAttachment(String attachmentId) async =>
      _repository.deleteAttachment(attachmentId);
}

class TestUploadAttachmentState extends UploadAttachmentState {
  const TestUploadAttachmentState({
    super.attachments,
    super.uploadEvent,
  });

  @override
  UploadAttachmentState updateWith({
    List<FileAttachment>? attachments,
    SingleAccessValue<UploadEvent>? uploadEvent,
  }) {
    return TestUploadAttachmentState(
      attachments: attachments ?? this.attachments,
      uploadEvent: uploadEvent ?? this.uploadEvent,
    );
  }
}

class MockFile extends Mock implements File {}

void main() {
  late TestUploadAttachmentsStateNotifier notifier;
  late final MockUploadAttachmentsRepository repository;
  late final List<MockFile> tFiles;
  late final MockFile tFile;

  const tMaxFileSizeMb = 10.0;
  const tMaxAttachments = 5;

  late final FileAttachmentAttached tFileAttachmentAttached;
  late final FileAttachmentUploading tFileAttachmentUploading;
  late final FileAttachmentUploaded tFileAttachmentUploaded;

  const tId = 'id';
  final tDateTimeNow = DateTime.now();
  final tSize = (tMaxFileSizeMb - 1).toInt();
  const tFileName = 'file_name.pdf';

  setUpAll(() {
    tFile = MockFile();
    tFiles = [tFile];

    tFileAttachmentAttached = FileAttachmentAttached(
      id: tId,
      file: tFile,
      fileName: tFileName,
      size: tSize,
    );
    tFileAttachmentUploading = tFileAttachmentAttached.toUploading(
      id: tId,
    ) as FileAttachmentUploading;
    tFileAttachmentUploaded = tFileAttachmentUploading.toUploaded(
      id: tId,
      uploadedDate: tDateTimeNow,
    ) as FileAttachmentUploaded;

    repository = MockUploadAttachmentsRepository();
  });

  setUp(() {
    // Reset the notifier state before each test
    notifier = TestUploadAttachmentsStateNotifier(
      const TestUploadAttachmentState(),
      repository,
      maxFileSizeMb: tMaxFileSizeMb,
      maxAttachments: tMaxAttachments,
    );

    registerFallbackValue(tFileAttachmentAttached);

    registerFallbackValue(tFileAttachmentUploading);

    registerFallbackValue(tFileAttachmentUploaded);

    // Setup the default answers for the repository methods
    when(() => repository.uploadAttachment(any())).thenAnswer(
      (_) => CancelableOperation.fromValue(
        Right<UploadFileFailure, FileAttachmentUploaded>(tFileAttachmentUploaded),
      ),
    );

    when(() => repository.deleteAttachment(any())).thenAnswer(
      (_) => Future.value(const Right<UploadFileFailure, void>(null)),
    );

    when(tFile.lengthSync).thenReturn(tSize);
    when(() => tFile.name).thenReturn(tFileName);
    when(() => tFile.path).thenReturn(tFileName);
  });

  group(
    'addFiles',
    () {
      test('should add files when not exceeding max attachments', () async {
        // Arrange

        // Act
        await notifier.addFiles(tFiles);

        // Assert
        expect(notifier.state.attachments.length, equals(tFiles.length));
      });

      test('should update state appropiately when everything is successful', () async {
        // Arrange

        // Assert
        unawaited(
          expectLater(
            notifier.stream,
            emitsInOrder([
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentAttached),
                'attachments',
                isTrue,
              ),
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentUploading),
                'attachments',
                isTrue,
              ),
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentUploaded),
                'attachments',
                isTrue,
              ),
            ]),
          ),
        );

        // Act
        await notifier.addFiles(tFiles);
      });

      test('should not add files when exceeding max attachments', () async {
        // Arrange
        final tFiles = List.generate(tMaxAttachments, (index) => tFile);
        await notifier.addFiles(tFiles);

        // Act
        await notifier.addFiles(tFiles);

        // Assert
        expect(notifier.state.attachments.length, equals(tMaxAttachments));
      });

      test(
        'should only add files the right amount of attachments when it hits the max num attachments',
        () async {
          // Arrange
          const difference = 2;
          await notifier.addFiles(List.generate(tMaxAttachments - difference, (index) => tFile));

          // Act
          const extra = 3;
          await notifier.addFiles(List.generate(difference + extra, (index) => tFile));

          // Assert
          expect(notifier.state.attachments.length, equals(tMaxAttachments));
        },
      );

      test(
          'should add $FileAttachmentError for each attachment when file size exceeds max file size',
          () async {
        // Arrange
        when(tFile.lengthSync).thenReturn(((tMaxFileSizeMb + 1) * 1024 * 1024).toInt());

        // Act
        await notifier.addFiles([tFile, tFile]);

        // Assert
        expect(notifier.state.attachments, everyElement(isA<FileAttachmentError>()));
      });

      test(
          'should add an ${UploadFileFailure.fileExceedsMaxSize} when adding files that exceed max attachment size',
          () async {
        // Arrange
        when(tFile.lengthSync).thenReturn(((tMaxFileSizeMb + 1) * 1024 * 1024).toInt());

        // Act
        await notifier.addFiles([tFile]);

        // Assert
        expect(
          notifier.state.uploadEvent,
          SingleAccessData(
            const UploadEvent.failure(UploadFileFailure.fileExceedsMaxSize(tMaxFileSizeMb)),
          ),
        );
      });

      test('should update state appropiately when uploading the file failed', () async {
        // Arrange
        const tFailure = UploadFileFailure.unexpected();
        when(() => repository.uploadAttachment(any())).thenAnswer(
          (_) => CancelableOperation.fromValue(const Left(tFailure)),
        );

        // Assert
        unawaited(
          expectLater(
            notifier.stream,
            emitsInOrder([
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentAttached),
                'attachments',
                isTrue,
              ),
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentUploading),
                'attachments',
                isTrue,
              ),
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentUploading),
                'attachments',
                isTrue,
              ),
              isA<TestUploadAttachmentState>().having(
                (state) => state.attachments.any((element) => element is FileAttachmentError),
                'attachments',
                isTrue,
              ),
            ]),
          ),
        );

        // Act
        await notifier.addFiles(tFiles);
      });
    },
  );

  group(
    'removeFiles',
    () {
      test('should remove the file that was passed as param', () async {
        // Arrange
        notifier.state = notifier.state.updateWith(
          attachments: notifier.state.attachments.toList()..add(tFileAttachmentAttached),
        );

        // Act
        await notifier.removeFile(tFileAttachmentAttached);

        // Assert
        expect(notifier.state.attachments, isEmpty);
      });

      test(
        'should call the deleteAttachment method when removing an uploaded attachment',
        () async {
          // Arrange
          notifier.state = notifier.state.updateWith(
            attachments: notifier.state.attachments.toList()..add(tFileAttachmentUploaded),
          );

          // Act
          await notifier.removeFile(tFileAttachmentUploaded);

          // Assert
          verify(() => repository.deleteAttachment(any())).called(1);
        },
      );

      test(
        'should update the state with a ${UploadEvent.deleteFileSuccess} when deleting successfully',
        () async {
          // Arrange
          notifier.state = notifier.state.updateWith(
            attachments: notifier.state.attachments.toList()..add(tFileAttachmentUploaded),
          );

          // Act
          await notifier.removeFile(tFileAttachmentUploaded);

          // Assert
          verify(() => repository.deleteAttachment(any())).called(1);
          expect(
            notifier.state.uploadEvent,
            SingleAccessData(const UploadEvent.deleteFileSuccess()),
          );
        },
      );

      test(
        'should not remove the file from the list when deleteAttachment fails',
        () async {
          // Arrange
          notifier.state = notifier.state.updateWith(
            attachments: notifier.state.attachments.toList()..add(tFileAttachmentUploaded),
          );
          when(() => repository.deleteAttachment(any())).thenAnswer(
            (_) async => const Left(UploadFileFailure.unexpected()),
          );

          // Act
          await notifier.removeFile(tFileAttachmentUploaded);

          // Assert
          expect(notifier.state.attachments.length, equals(1));
        },
      );

      test('should add an ${UploadEvent.failure} when deleteAttachment fails', () async {
        // Arrange
        const tFailure = UploadFileFailure.unexpected();
        notifier.state = notifier.state.updateWith(
          attachments: notifier.state.attachments.toList()..add(tFileAttachmentUploaded),
        );
        when(() => repository.deleteAttachment(any())).thenAnswer(
          (_) async => const Left(tFailure),
        );

        // Act
        await notifier.removeFile(tFileAttachmentUploaded);

        // Assert
        expect(
          notifier.state.uploadEvent,
          SingleAccessData(const UploadEvent.failure(tFailure)),
        );
      });
    },
  );
}
