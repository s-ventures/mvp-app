import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

part 'file_attachment.freezed.dart';

@freezed
class FileAttachment with _$FileAttachment {
  const factory FileAttachment.initial() = FileAttachmentInitial;

  const factory FileAttachment.loading() = FileAttachmentLoading;

  const factory FileAttachment.attached({
    required int id,
    required File file,
    required String fileName,
    double? size,
  }) = FileAttachmentAttached;

  const factory FileAttachment.error({
    required int id,
    required UploadFileFailure error,
    String? fileName,
    double? size,
  }) = FileAttachmentError;

  const factory FileAttachment.deleting({
    required int id,
  }) = FileAttachmentDeleting;

  const factory FileAttachment.uploading({
    required int id,
    required File file,
    required String fileName,
    double? size,
    double? progress,
  }) = FileAttachmentUploading;

  const factory FileAttachment.uploaded({
    required int id,
    required String fileName,
    double? size,
  }) = FileAttachmentUploaded;

  const FileAttachment._();

  FileAttachmentUploaded? asUploaded() => mapOrNull(uploaded: (file) => file);
  FileAttachmentUploading? asUploading() => mapOrNull(uploading: (file) => file);
  FileAttachmentAttached? asAttached() => mapOrNull(attached: (file) => file);

  FileAttachment toUploading({required int id, double progress = 99}) => maybeMap(
        attached: (attachment) => FileAttachment.uploading(
          id: id,
          size: attachment.size,
          fileName: attachment.fileName,
          file: attachment.file,
          progress: progress,
        ),
        orElse: () => throw Exception('You can only upload a file that is in attached status'),
      );

  FileAttachment toUploaded({required int id}) => maybeMap(
        uploading: (attachment) => FileAttachment.uploaded(
          id: id,
          size: attachment.size,
          fileName: attachment.fileName,
        ),
        orElse: () => throw Exception(
          'You can only mark a file as uploaded from the uploading status',
        ),
      );

  FileAttachment toDeleting() => maybeMap(
        attached: (attachment) => FileAttachment.deleting(
          id: attachment.id,
        ),
        uploaded: (attachment) => FileAttachment.deleting(
          id: attachment.id,
        ),
        orElse: () => throw Exception(
          'You can only delete a file that is uploaded or attached',
        ),
      );

  FileAttachment toError({required UploadFileFailure error}) => maybeMap(
        attached: (attachment) => FileAttachment.error(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
          error: error,
        ),
        uploading: (attachment) => FileAttachment.error(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
          error: error,
        ),
        error: (attachment) => FileAttachment.error(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
          error: error,
        ),
        uploaded: (attachment) => FileAttachment.error(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
          error: error,
        ),
        orElse: FileAttachment.initial,
      );

  bool get isReady => maybeMap(
        attached: (_) => true,
        error: (_) => true,
        uploaded: (_) => true,
        orElse: () => false,
      );

  int? get id => mapOrNull<int>(
        attached: (e) => e.id,
        uploading: (e) => e.id,
        uploaded: (e) => e.id,
        error: (e) => e.id,
        deleting: (e) => e.id,
      );
}
