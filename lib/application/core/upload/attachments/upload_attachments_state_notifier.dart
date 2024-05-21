import 'dart:async';
import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/async/stream_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/core/extensions/file_extension.dart';
import 'package:manifiesto_mvp_app/core/extensions/int_extension.dart';
import 'package:manifiesto_mvp_app/core/extensions/list_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'file_upload.dart';

abstract class UploadAttachmentsStateNotifier<T extends UploadAttachmentState>
    extends StateNotifier<T> {
  UploadAttachmentsStateNotifier(
    super._state, {
    required this.maxFileSizeMb,
    required this.maxAttachments,
  }) {
    _filesUploadSubject
        .exhaustMap(_prepareAttachments)
        .asyncMap(_updateAttachmentStatus)
        .listenSafe(_compositeSubscription);
  }

  final List<_FileUpload> _files = [];
  final PublishSubject<List<FileAttachment>> _filesUploadSubject = PublishSubject();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  final double maxFileSizeMb;
  final int maxAttachments;

  Future<void> addFiles(List<File> files) async {
    for (final fileUpload in _files) {
      await fileUpload.operation.cancel();
    }

    final filesToUpload = files.toList();
    final attachments = state.attachments.toList();

    final exceededSizeFiles = <File>[];

    for (var i = 0; i < files.length; i++) {
      final file = files[i];
      final fileLength = file.lengthSync();

      if (fileLength.bytesToMegaBytes() > maxFileSizeMb) {
        exceededSizeFiles.add(file);
        filesToUpload.remove(file);
        attachments.add(
          FileAttachment.error(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            error: UploadFileFailure.fileExceedsMaxSize(maxFileSizeMb),
            fileName: file.shortName(),
            size: fileLength,
          ),
        );
      } else {
        attachments.add(
          FileAttachment.attached(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            file: file,
            fileName: file.shortName(),
            size: fileLength,
          ),
        );
      }
    }

    if (exceededSizeFiles.isNotEmpty) {
      setStateSafe(
        () => state.updateWith(
          uploadEvent: SingleAccessData(
            UploadEvent.failure(UploadFileFailure.fileExceedsMaxSize(maxFileSizeMb)),
          ),
        ) as T,
      );
    }

    setStateSafe(
      () => state.updateWith(attachments: attachments) as T,
    );

    _filesUploadSubject.add(attachments);
  }

  Future<void> removeFile(FileAttachment attachment) async {
    final attachments = state.attachments.toList();
    final index = attachments.indexWhere(
      (e) => e.id == attachment.id,
    );
    final attachmentId = attachment.id;

    for (final file in _files) {
      if (file.attachment.id == attachmentId) {
        await file.operation.cancel();
        break;
      }
    }

    if (index < 0 || attachmentId == null) {
      return;
    }

    // If it was previously uploaded we delete it from the back-end
    if (attachment.isUploaded) {
      setStateSafe(
        () => state.updateWith(
          attachments: state.attachments.replaceWith(
            [attachment.toDeleting()],
            equals: (item, newItem) => item.id == newItem.id,
          ),
        ) as T,
      );
      final result = await deleteAttachment(attachmentId);
      result.fold(
        (failure) => setStateSafe(
          () => state.updateWith(uploadEvent: SingleAccessData(UploadEvent.failure(failure))) as T,
        ),
        (success) {
          setStateSafe(
            () => state.updateWith(
              uploadEvent: SingleAccessData(const UploadEvent.deleteFileSuccess()),
            ) as T,
          );
        },
      );
      if (result.isLeft()) {
        return;
      }
    }

    attachments.removeAt(index);
    setStateSafe(
      () => state.updateWith(attachments: attachments) as T,
    );
  }

  Future<void> _updateAttachmentStatus((FileAttachment fileUpload, String newId) args) async {
    final attachments = state.attachments.toList();
    final fileUpload = args.$1;
    final newId = args.$2;

    final index = attachments.indexWhere((file) {
      final localId = file.id;
      final uploadId = fileUpload.id;

      return localId != null && uploadId != null && localId == uploadId;
    });

    if (index < 0) {
      return;
    }

    // Replace the attachment with the new state
    attachments.replaceRange(index, index + 1, [fileUpload.toUploadedOrError(id: newId)]);

    setStateSafe(
      () => state.updateWith(attachments: attachments) as T,
    );
  }

  Stream<(FileAttachment, String)> _prepareAttachments(List<FileAttachment> attachments) async* {
    final totalAttachments = state.attachments.length;
    var attachmentsToUpload = attachments.toList();

    if (totalAttachments > maxAttachments) {
      final value = totalAttachments - maxAttachments;
      // Get only the ones that fit the max amount
      attachmentsToUpload = attachments.getRange(0, attachments.length - value).toList();
    }

    _files.clear();
    final uploadingAttachments = <FileAttachment>[];
    for (final attachment in attachmentsToUpload) {
      final attached = attachment.asAttached();
      if (attached == null) {
        continue;
      }

      final uploading = attachment.toUploading(id: attached.id);
      uploadingAttachments.add(uploading);

      final fileUpload = _FileUpload(
        uploading,
        uploadAttachment(attached),
      );
      _files.add(fileUpload);
    }

    // We update the list of attachments with the new values
    final stateAttachments = state.attachments.toList().replaceWith(
          uploadingAttachments,
          equals: (item, newItem) => item.id == newItem.id,
        );

    setStateSafe(
      () => state.updateWith(attachments: stateAttachments) as T,
    );

    yield* Stream.fromFutures(
      _files.map(
        (fileUpload) => fileUpload.operation.value.then(
          (result) => result.fold(
            (failure) {
              setStateSafe(
                () => state.updateWith(uploadEvent: SingleAccessData(UploadEvent.failure(failure)))
                    as T,
              );
              return (fileUpload.attachment.toError(error: failure), fileUpload.attachment.id!);
            },
            (attachment) => (fileUpload.attachment, attachment.id!),
          ),
        ),
      ),
    );
  }

  @protected
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadAttachment(
    FileAttachmentAttached attachment,
  );

  @protected
  Future<Either<UploadFileFailure, void>> deleteAttachment(
    String attachmentId,
  );

  @override
  Future<void> dispose() async {
    await _compositeSubscription.dispose();
    await Future.wait(_files.map((e) => e.operation.cancel()));
    super.dispose();
  }
}
