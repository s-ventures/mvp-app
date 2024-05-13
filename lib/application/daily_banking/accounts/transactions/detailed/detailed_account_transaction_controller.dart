import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/upload/attachments/upload_attachments_state_notifier.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/detailed/detailed_account_transaction_state.dart';
import 'package:manifiesto_mvp_app/core/extensions/file_extension.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/account_transactions_repository.dart';
import 'package:meta/meta.dart';

final detailedAccountTransactionControllerProvider =
    StateNotifierProvider<DetailedAccountTransactionController, DetailedAccountTransactionState>(
  (ref) => DetailedAccountTransactionController(ref.watch(accountTransactionsRepositoryProvider)),
);

class DetailedAccountTransactionController extends UploadAttachmentsStateNotifier<DetailedAccountTransactionState> {
  DetailedAccountTransactionController(this._repository)
      : super(
          const DetailedAccountTransactionState(),
          maxAttachments: 3,
          maxFileSizeMb: 10,
        );

  final AccountTransactionsRepository _repository;

  Future<void> init(String accountId, String transactionId) async {
    try {
      final transactionOrFailure = await _repository.getDetailedAccountTransaction(
        accountId: accountId,
        transactionId: transactionId,
      );

      setStateSafe(
        () => transactionOrFailure.fold(
          (l) => state.copyWith(transaction: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(
            transaction: AsyncData(
              // TODO(migalv): Remove this when back-end returns the account id
              r.copyWith(accountId: UniqueId.fromUniqueString(accountId)),
            ),
          ),
        ),
      );
    } catch (e) {
      state = state.copyWith(transaction: AsyncError(e, StackTrace.current));
    }
  }

  @override
  @protected
  CancelableOperation<Either<UploadFileFailure, FileAttachmentUploaded>> uploadAttachment(
    FileAttachmentAttached attachment,
  ) {
    final accountId = state.transaction.whenOrNull(data: (tx) => tx.accountId?.getOrCrash());
    final transactionId = state.transaction.whenOrNull(
      data: (transaction) => transaction.id.value.fold(
        (l) => null,
        (r) => r,
      ),
    );

    if (accountId == null || transactionId == null) {
      return CancelableOperation.fromValue(left(const UploadFileFailure.unexpected()));
    }

    return CancelableOperation.fromFuture(
      _repository.attachFileToTransaction(
        accountId: accountId,
        transactionId: transactionId,
        file: attachment.file,
        fileName: attachment.file.name ?? 'no_name',
      ),
    );
  }

  @override
  @protected
  Future<Either<UploadFileFailure, void>> deleteAttachment(String attachmentId) async {
    final accountId = state.transaction.whenOrNull(data: (tx) => tx.accountId?.getOrCrash());
    final transactionId = state.transaction.whenOrNull(
      data: (transaction) => transaction.id.value.fold(
        (l) => null,
        (r) => r,
      ),
    );

    if (accountId == null || transactionId == null) {
      return left(const UploadFileFailure.unexpected());
    }

    return _repository.removeAttachmentFromTransaction(
      accountId: accountId,
      transactionId: transactionId,
      attachmentId: attachmentId,
    );
  }
}
