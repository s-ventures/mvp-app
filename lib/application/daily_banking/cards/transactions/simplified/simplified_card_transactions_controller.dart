import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_state.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/repositories/card_transactions_pagination_repository.dart';

final simplifiedCardTransactionsControllerProvider = StateNotifierProvider<
    SimplifiedCardTransactionsController, SimplifiedCardTransactionsState>(
  (ref) => SimplifiedCardTransactionsController(
    ref.watch(cardTransactionsPaginationRepositoryProvider),
  ),
);

class SimplifiedCardTransactionsController
    extends StateNotifier<SimplifiedCardTransactionsState>
    with PaginationLoadingProvider<List<SimplifiedCardTransaction>> {
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
            transactions: const AsyncLoading<List<SimplifiedCardTransaction>>()
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
  }) async {
    _repository.setFilter(
      concept: concept,
    );
    await refresh();
  }
}
