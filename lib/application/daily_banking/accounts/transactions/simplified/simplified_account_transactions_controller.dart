import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_transactions_pagination_repository.dart';

final simplifiedAccountTransactionsControllerProvider = StateNotifierProvider<
    SimplifiedAccountTransactionsController, SimplifiedAccountTransactionsState>(
  (ref) => SimplifiedAccountTransactionsController(
    ref.watch(accountTransactionsPaginationRepositoryProvider),
  ),
);

class SimplifiedAccountTransactionsController
    extends StateNotifier<SimplifiedAccountTransactionsState>
    with
        FilteredPaginationLoadingProvider<Map<DateTime, List<SimplifiedAccountTransaction>>,
            AccountTransactionsFilter> {
  SimplifiedAccountTransactionsController(
    this._repository,
  ) : super(const SimplifiedAccountTransactionsState());

  final AccountTransactionsPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            transactions: const AsyncLoading<Map<DateTime, List<SimplifiedAccountTransaction>>>()
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
}
