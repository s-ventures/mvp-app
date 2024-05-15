import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_state.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_pagination_repository.dart';

final simplifiedCardTransactionsControllerProvider = StateNotifierProvider<
    SimplifiedCardTransactionsController, SimplifiedCardTransactionsState>(
  (ref) => SimplifiedCardTransactionsController(
    ref.watch(cardTransactionsPaginationRepositoryProvider),
  ),
);

class SimplifiedCardTransactionsController
    extends StateNotifier<SimplifiedCardTransactionsState>
    with
        PaginationLoadingProvider<
            Map<DateTime, List<SimplifiedCardTransaction>>> {
  SimplifiedCardTransactionsController(
    this._repository,
  ) : super(const SimplifiedCardTransactionsState());

  final CardTransactionsPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            transactions: const AsyncLoading<
                    Map<DateTime, List<SimplifiedCardTransaction>>>()
                .copyWithPrevious(state.transactions),
          ),
        );
      },
      onDataLoaded: (transactions) {
        setStateSafe(
          () => state.copyWith(transactions: transactions),
        );
      },
    );
  }

  Future<void> updateFilter({
    required String? concept,
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
    TransactionOperationType operationType = TransactionOperationType.all,
  }) async {
    _repository.setFilter(
      concept: concept,
      amountFrom: amountFrom,
      amountTo: amountTo,
      dateFrom: dateFrom,
      dateTo: dateTo,
      operationType: operationType,
    );
    await refresh();
  }
}
