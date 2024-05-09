import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

part 'detailed_account_transaction_state.freezed.dart';

@freezed
class DetailedAccountTransactionState with _$DetailedAccountTransactionState implements UploadAttachmentState {
  @Implements<UploadAttachmentState>()
  const factory DetailedAccountTransactionState({
    @Default(AsyncLoading<DetailedAccountTransaction>()) AsyncValue<DetailedAccountTransaction> transaction,
    @Default([]) List<FileAttachment> attachments,
    @Default(SingleAccessVoid<UploadFileFailure>()) SingleAccessValue<UploadFileFailure> uploadFailure,
  }) = _DetailedAccountTransactionState;

  const DetailedAccountTransactionState._();

  @override
  UploadAttachmentState updateWith({
    List<FileAttachment>? attachments,
    SingleAccessValue<UploadFileFailure>? uploadFailure,
  }) {
    return copyWith(
      attachments: attachments ?? this.attachments,
      uploadFailure: uploadFailure ?? this.uploadFailure,
    );
  }

  @override
  bool get attachmentsAreLoading => attachments.any((element) => !element.isReady);
}
