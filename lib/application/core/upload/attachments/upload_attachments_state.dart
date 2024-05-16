import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

part 'upload_attachments_state.freezed.dart';

abstract class UploadAttachmentState {
  const UploadAttachmentState({
    this.attachments = const [],
    this.uploadEvent = const SingleAccessVoid(),
  });

  final List<FileAttachment> attachments;
  final SingleAccessValue<UploadEvent> uploadEvent;

  UploadAttachmentState updateWith({
    List<FileAttachment>? attachments,
    SingleAccessValue<UploadEvent>? uploadEvent,
  });

  bool get attachmentsAreLoading => attachments.any((element) => !element.isReady);
}

@freezed
class UploadEvent with _$UploadEvent {
  const factory UploadEvent.failure(UploadFileFailure failure) = _UploadFailure;
  const factory UploadEvent.deleteFileSuccess() = _DeleteFileSuccess;
}
