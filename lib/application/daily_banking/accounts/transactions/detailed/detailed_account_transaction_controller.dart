import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/detailed/detailed_account_transaction_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/account_transactions_repository.dart';

final detailedAccountTransactionControllerProvider =
    StateNotifierProvider.autoDispose<DetailedAccountTransactionController,
        DetailedAccountTransactionState>(
  (ref) => DetailedAccountTransactionController(
      ref.watch(accountTransactionsRepositoryProvider)),
);

class DetailedAccountTransactionController
    extends StateNotifier<DetailedAccountTransactionState> {
  DetailedAccountTransactionController(this._repository)
      : super(const DetailedAccountTransactionState());

  final AccountTransactionsRepository _repository;

  Future<void> init(String accountId, String transactionId) async {
    try {
      final transactionOrFailure =
          await _repository.getDetailedAccountTransaction(
        accountId: accountId,
        transactionId: transactionId,
      );

      setStateSafe(
        () => transactionOrFailure.fold(
          (l) => state.copyWith(transaction: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(transaction: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(transaction: AsyncError(e, StackTrace.current));
    }
  }
}
