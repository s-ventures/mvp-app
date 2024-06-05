part of 'upload_attachments_state_notifier.dart';

class _FileUpload {
  const _FileUpload(this.attachment, this.operation);

  final FileAttachment attachment;
  final CancelableOperation<Either<UploadFileFailure, FileAttachment>> operation;
}
