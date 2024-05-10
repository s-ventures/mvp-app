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
    required this.maxAttachments,
  }) : _attachmentRepository = repository {
    _filesUploadSubject
        .exhaustMap<FileAttachment>(_prepareAttachments)
        .asyncMap(_updateUploadedImages)
        .listenSafe(_compositeSubscription);
  }

  final UploadFileRepository _attachmentRepository;

  final List<_FileUpload> _files = [];
  final PublishSubject<List<FileAttachment>> _filesUploadSubject = PublishSubject();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  final double maxFileSizeMb;
  final int maxAttachments;

  Future<void> addFiles(List<File> files) async {
    if (state.attachmentsAreLoading) {
      return;
    }

    for (final fileUpload in _files) {
      await fileUpload.operation.cancel();
    }

    final filesToUpload = files.toList();
    final attachments = state.attachments.toList();

    final futureFileSizes = await Future.wait(files.map((e) => e.length()));
    final fileSizes = futureFileSizes.map((e) => e.bytesToMegaBytes()).toList();

    final exceededSizeFiles = <File>[];

    for (var i = 0; i < files.length; i++) {
      final file = files[i];

      if (fileSizes[i] > maxFileSizeMb) {
        exceededSizeFiles.add(file);
        filesToUpload.remove(file);
      } else {
        attachments.add(
          FileAttachment.attached(
            id: DateTime.now().millisecondsSinceEpoch,
            file: file,
            fileName: file.shortName(),
            size: fileSizes[i],
          ),
        );
      }
    }

    if (exceededSizeFiles.isNotEmpty) {
      setStateSafe(
        () => state.updateWith(
          uploadFailure: SingleAccessData(UploadFileFailure.fileExceedsMaxSize(maxFileSizeMb)),
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
      (image) => image.id == attachment.id,
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

  Stream<FileAttachment> _prepareAttachments(List<FileAttachment> attachments) async* {
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
        _attachmentRepository.uploadFile(attached.file),
      );
      _files.add(fileUpload);
    }

    setStateSafe(
      () => state.updateWith(attachments: uploadingAttachments) as T,
    );

    yield* Stream.fromFutures(
      _files.map(
        (fileUpload) => fileUpload.operation.value.then(
          (result) => result.fold(
            (error) => fileUpload.attachment.toError(error: error),
            (attachment) => fileUpload.attachment,
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
