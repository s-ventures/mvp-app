part of 'upload_attachments_state_notifier.dart';

class _FileUpload {
  const _FileUpload(this.id, this.operation);

  final int id;
  final CancelableOperation<Either<UploadFileFailure, FileAttachment>> operation;
}
