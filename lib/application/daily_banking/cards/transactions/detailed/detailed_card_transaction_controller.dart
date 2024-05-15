import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/detailed/detailed_card_transaction_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_repository.dart';

final detailedCardTransactionControllerProvider =
    StateNotifierProvider.autoDispose<DetailedCardTransactionController,
        DetailedCardTransactionState>(
  (ref) => DetailedCardTransactionController(
    ref.watch(cardTransactionsRepositoryProvider),
  ),
);

class DetailedCardTransactionController
    extends StateNotifier<DetailedCardTransactionState> {
  DetailedCardTransactionController(this._repository)
      : super(const DetailedCardTransactionState());

  final CardTransactionsRepository _repository;

  Future<void> init({
    required int cardContractId,
    required int transactionId,
  }) async {
    try {
      final transactionOrFailure = await _repository.getDetailedCardTransaction(
        cardContractId: cardContractId,
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
