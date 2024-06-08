import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state_notifier.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/detailed/detailed_card_transaction_state.dart';
import 'package:manifiesto_mvp_app/core/extensions/file_extension.dart';
import 'package:manifiesto_mvp_app/core/extensions/list_extension.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_repository.dart';
import 'package:meta/meta.dart';

final detailedCardTransactionControllerProvider = StateNotifierProvider.autoDispose<
    DetailedCardTransactionController, DetailedCardTransactionState>(
  (ref) => DetailedCardTransactionController(
    ref.watch(cardTransactionsRepositoryProvider),
  ),
);

class DetailedCardTransactionController
    extends UploadAttachmentsStateNotifier<DetailedCardTransactionState> {
  DetailedCardTransactionController(this._repository)
      : super(
          const DetailedCardTransactionState(),
          maxAttachments: 3,
          maxFileSizeMb: 10,
        );

  // TODO: Replace with interface
  final CardTransactionsRepository _repository;

  Future<void> init({
    required String cardContractId,
    required String transactionId,
  }) async {
    final transactionOrFailure = await _repository.getDetailedCardTransaction(
      cardContractId: cardContractId,
      transactionId: transactionId,
    );

    setStateSafe(
      () => transactionOrFailure.fold(
        (l) => state.copyWith(
          cardContractId: cardContractId,
          transaction: AsyncError(l, StackTrace.current),
        ),
        (tx) {
          final txAttachments = tx.attachments;

          final attachments = txAttachments.replaceWith(
            state.attachments,
            equals: (item, newItem) {
              return item.id != null && newItem.id != null && item.id == newItem.id;
            },
          );

          return state.copyWith(
            cardContractId: cardContractId,
            attachments: attachments,
            transaction: AsyncData(tx),
          );
        },
      ),
    );
  }

  @override
  @protected
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadAttachment(
    FileAttachmentAttached attachment,
  ) {
    final cardContractId = state.cardContractId;
    final transactionId = state.transaction.whenOrNull(
      data: (transaction) => transaction.id.value.fold(
        (l) => null,
        (r) => r,
      ),
    );

    if (cardContractId == null || transactionId == null) {
      return CancelableOperation.fromValue(
        left(const UploadFileFailure.unexpected()),
      );
    }

    return CancelableOperation.fromFuture(
      _repository.attachFileToCardTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
        file: attachment.file,
        fileName: attachment.file.name ?? 'no_name',
      ),
    );
  }

  @override
  @protected
  Future<Either<UploadFileFailure, void>> deleteAttachment(
    String attachmentId,
  ) async {
    final cardContractId = state.cardContractId;
    final transactionId = state.transaction.whenOrNull(
      data: (transaction) => transaction.id.value.fold(
        (l) => null,
        (r) => r,
      ),
    );

    if (cardContractId == null || transactionId == null) {
      return left(const UploadFileFailure.unexpected());
    }

    return _repository.removeAttachmentFromCardTransaction(
      cardContractId: cardContractId,
      transactionId: transactionId,
      attachmentId: attachmentId,
    );
  }
}
