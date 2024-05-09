import 'dart:async';
import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/core/extensions/int_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/domain/upload/repositories/upload_file_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'file_upload.dart';

class UploadAttachmentsStateNotifier<T extends UploadAttachmentState> extends StateNotifier<T> {
  UploadAttachmentsStateNotifier(
    super._state, {
    required UploadFileRepository repository,
    required this.maxFileSizeMb,
    required this.maxFiles,
  }) : _attachmentRepository = repository {
    _filesUploadSubject
        .exhaustMap<FileAttachment>(_prepareImagesToUpload)
        .asyncMap(_updateUploadedImages)
        .listenSafe(_compositeSubscription);
  }

  final UploadFileRepository _attachmentRepository;

  final List<_FileUpload> _files = [];
  final PublishSubject<List<File>> _filesUploadSubject = PublishSubject();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  final double maxFileSizeMb;
  final int maxFiles;

  Future<void> addFiles(List<File> files) async {
    if (state.attachmentsAreLoading) {
      return;
    }

    for (final fileUpload in _files) {
      await fileUpload.operation.cancel();
    }

    final filesToUpload = files.toList();
    final futureFileSizes = await Future.wait(files.map((e) => e.length()));
    final fileSizes = futureFileSizes.map((e) => e.bytesToMegaBytes()).toList();
    final exceededSizeFiles = <File>[];

    for (var i = 0; i < files.length; i++) {
      if (fileSizes[i] > maxFileSizeMb) {
        exceededSizeFiles.add(files[i]);
        filesToUpload.remove(files[i]);
      }
    }

    if (exceededSizeFiles.isNotEmpty) {
      setStateSafe(
        () => state.updateWith(
          uploadFailure: SingleAccessData(const UploadFileFailure.fileExceedsMaxSize()),
        ) as T,
      );
    }

    _filesUploadSubject.add(filesToUpload.map((e) => File(e.path)).toList());
  }

  Future<void> removeFile(int fileId) async {
    final attachments = state.attachments.toList();
    final index = attachments.indexWhere(
      (image) => image.asAttached()?.id == fileId,
    );

    if (index < 0) {
      return;
    }

    attachments.removeAt(index);

    setStateSafe(
      () => state.updateWith(attachments: attachments) as T,
    );
  }

  Future<void> _updateUploadedImages(FileAttachment fileUpload) async {
    final attachments = state.attachments.toList();

    final index = attachments.indexWhere((file) {
      final localId = file.id;
      final uploadId = fileUpload.id;

      return localId != null && uploadId != null && localId == uploadId;
    });

    // Replace the attachment with the new state
    attachments
      ..removeAt(index)
      ..insert(index, fileUpload);

    setStateSafe(
      () => state.updateWith(attachments: attachments) as T,
    );
  }

  Stream<FileAttachment> _prepareImagesToUpload(List<File> filesToUpload) async* {
    final totalFiles = state.attachments.length;
    List<File?> files = filesToUpload.toList();

    if (totalFiles > maxFiles) {
      final value = totalFiles - maxFiles;
      // Get only the ones that fit the max amount
      files = filesToUpload.getRange(0, filesToUpload.length - value).toList();
    }

    for (final element in _files) {
      unawaited(element.operation.cancel());
    }

    _files
      ..clear()
      ..addAll(
        filesToUpload.map(
          (e) => _FileUpload(
            DateTime.now().microsecondsSinceEpoch,
            _attachmentRepository.uploadFile(e),
          ),
        ),
      );

    final stateImages = state.attachments.toList()
      ..insertAll(
        0,
        List.generate(
          files.length,
          (index) {
            final file = files[index];
            final name = file!.path.split('/').last;
            return FileAttachment.uploading(
              fileName: name,
              id: _files[index].id,
              file: files[index]!,
            );
          },
        ),
      );

    setStateSafe(
      () => state.updateWith(attachments: stateImages) as T,
    );

    yield* Stream.fromFutures(
      _files.map(
        (fileUpload) => fileUpload.operation.value.then(
          (result) => result.fold(
            (error) => FileAttachment.error(id: fileUpload.id, error: error),
            (attachment) => attachment,
          ),
        ),
      ),
    );
  }

  @override
  Future<void> dispose() async {
    await _compositeSubscription.dispose();
    await Future.wait(_files.map((e) => e.operation.cancel()));
    super.dispose();
  }
}
