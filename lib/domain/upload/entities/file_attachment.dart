import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

part 'file_attachment.freezed.dart';

@freezed
class FileAttachment with _$FileAttachment {
  const factory FileAttachment.initial() = FileAttachmentInitial;

  const factory FileAttachment.attached({
    required String id,
    required File file,
    required String? fileName,

    /// File size in bytes
    required int size,
  }) = FileAttachmentAttached;

  const factory FileAttachment.error({
    required String id,
    required UploadFileFailure error,

    /// File size in bytes
    required int size,
    required String? fileName,
  }) = FileAttachmentError;

  const factory FileAttachment.deleting({
    required String id,

    /// File size in bytes
    required int size,
    required String? fileName,
  }) = FileAttachmentDeleting;

  const factory FileAttachment.uploading({
    required String id,
    required File file,
    required String? fileName,

    /// File size in bytes
    required int size,
    double? progress,
  }) = FileAttachmentUploading;

  const factory FileAttachment.uploaded({
    required String id,
    required String? fileName,

    /// File size in bytes
    required int size,
    required DateTime timeStamp,
  }) = FileAttachmentUploaded;

  const FileAttachment._();

  FileAttachmentUploaded? asUploaded() => mapOrNull(uploaded: (attachment) => attachment);
  FileAttachmentUploading? asUploading() => mapOrNull(uploading: (attachment) => attachment);
  FileAttachmentAttached? asAttached() => mapOrNull(attached: (attachment) => attachment);
  FileAttachmentError? asError() => mapOrNull(error: (attachment) => attachment);

  FileAttachment toUploading({required String id, double progress = 99}) => maybeMap(
        attached: (attachment) => FileAttachment.uploading(
          id: id,
          size: attachment.size,
          fileName: attachment.fileName,
          file: attachment.file,
          progress: progress,
        ),
        orElse: () => throw Exception('You can only upload a file that is in attached status'),
      );

  FileAttachment toUploaded({required String id, DateTime? uploadedDate}) => maybeMap(
        uploading: (attachment) => FileAttachment.uploaded(
          id: id,
          size: attachment.size,
          timeStamp: DateTime.now(),
          fileName: attachment.fileName,
        ),
        orElse: () => throw Exception(
          'You can only mark a file as uploaded from the uploading status',
        ),
      );

  FileAttachment toUploadedOrError({required String id, DateTime? uploadedDate}) => maybeMap(
        uploading: (attachment) => FileAttachment.uploaded(
          id: id,
          size: attachment.size,
          timeStamp: uploadedDate ?? DateTime.now(),
          fileName: attachment.fileName,
        ),
        error: (attachment) => attachment,
        orElse: () => throw Exception(
          'You can only mark a file as uploaded from the uploading status',
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

  FileAttachment toDeleting() => maybeMap(
        attached: (attachment) => FileAttachment.deleting(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
        ),
        uploading: (attachment) => FileAttachment.deleting(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
        ),
        error: (attachment) => FileAttachment.deleting(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
        ),
        uploaded: (attachment) => FileAttachment.deleting(
          id: attachment.id,
          size: attachment.size,
          fileName: attachment.fileName,
        ),
        orElse: FileAttachment.initial,
      );

  bool get isReady => maybeMap(
        attached: (_) => true,
        error: (_) => true,
        uploaded: (_) => true,
        orElse: () => false,
      );

  bool get isReadyForUpload => maybeMap(
        attached: (_) => true,
        orElse: () => false,
      );

  bool get isUploaded => maybeMap(
        uploaded: (_) => true,
        orElse: () => false,
      );

  int? get size => mapOrNull<int>(
        attached: (e) => e.size,
        uploading: (e) => e.size,
        uploaded: (e) => e.size,
        error: (e) => e.size,
      );

  String? get fileName => mapOrNull<String>(
        attached: (e) => e.fileName,
        uploading: (e) => e.fileName,
        uploaded: (e) => e.fileName,
        error: (e) => e.fileName,
      );

  String? get id => mapOrNull<String>(
        attached: (e) => e.id,
        uploading: (e) => e.id,
        uploaded: (e) => e.id,
        error: (e) => e.id,
      );
}
