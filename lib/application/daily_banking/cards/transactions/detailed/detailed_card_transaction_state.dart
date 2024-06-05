import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/application/core/misc/single_access_data.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_card_transaction_state.freezed.dart';

@freezed
class DetailedCardTransactionState
    with _$DetailedCardTransactionState
    implements UploadAttachmentState {
  @Implements<UploadAttachmentState>()
  const factory DetailedCardTransactionState({
    String? cardContractId,
    @Default(AsyncLoading<DetailedCardTransaction>())
    AsyncValue<DetailedCardTransaction> transaction,
    @Default([]) List<FileAttachment> attachments,
    @Default(SingleAccessVoid<UploadEvent>()) SingleAccessValue<UploadEvent> uploadEvent,
  }) = _DetailedCardTransactionState;

  const DetailedCardTransactionState._();

  @override
  UploadAttachmentState updateWith({
    List<FileAttachment>? attachments,
    SingleAccessValue<UploadEvent>? uploadEvent,
  }) {
    return copyWith(
      attachments: attachments ?? this.attachments,
      uploadEvent: uploadEvent ?? this.uploadEvent,
    );
  }

  @override
  bool get attachmentsAreLoading => attachments.any((element) => !element.isReady);
}
