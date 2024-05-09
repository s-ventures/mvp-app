import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

abstract class UploadAttachmentState {
  const UploadAttachmentState({
    this.attachments = const [],
    this.uploadFailure = const SingleAccessVoid(),
  });

  final List<FileAttachment> attachments;
  final SingleAccessValue<UploadFileFailure> uploadFailure;

  UploadAttachmentState updateWith({
    List<FileAttachment>? attachments,
    SingleAccessValue<UploadFileFailure>? uploadFailure,
  });

  bool get attachmentsAreLoading => attachments.any((element) => !element.isReady);
}
