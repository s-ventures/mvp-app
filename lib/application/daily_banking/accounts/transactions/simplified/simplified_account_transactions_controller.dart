import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_transactions_pagination_repository.dart';

final simplifiedAccountTransactionsControllerProvider = StateNotifierProvider<
    SimplifiedAccountTransactionsController,
    SimplifiedAccountTransactionsState>(
  (ref) => SimplifiedAccountTransactionsController(
    ref.watch(accountTransactionsPaginationRepositoryProvider),
  ),
);

class SimplifiedAccountTransactionsController
    extends StateNotifier<SimplifiedAccountTransactionsState>
    with
        PaginationLoadingProvider<
            Map<DateTime, List<SimplifiedAccountTransaction>>> {
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
            transactions: const AsyncLoading<
                    Map<DateTime, List<SimplifiedAccountTransaction>>>()
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
    required String? description,
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
    TransactionOperationType operationType = TransactionOperationType.all,
  }) async {
    _repository.updateFilter(
      description: description,
      amountFrom: amountFrom,
      amountTo: amountTo,
      dateFrom: dateFrom,
      dateTo: dateTo,
      operationType: operationType,
    );
    await refresh();
  }
}
