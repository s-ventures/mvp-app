import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/core/typedef.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_transactions_filtered_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/accounts_repository.dart';

final simplifiedAccountTransactionsControllerProvider = StateNotifierProvider.autoDispose<
    SimplifiedAccountTransactionsController, SimplifiedAccountTransactionsState>(
  (ref) => SimplifiedAccountTransactionsController(
    ref.watch(accountTransactionsFilteredPaginationRepositoryProvider),
    ref.watch(accountsRepositoryProvider),
  ),
);

class SimplifiedAccountTransactionsController
    extends StateNotifier<SimplifiedAccountTransactionsState>
    with
        FilteredPaginationLoadingProvider<DateTimeListMap<SimplifiedAccountTransaction>,
            AccountTransactionsFilter> {
  SimplifiedAccountTransactionsController(
    this._accountsTransactionPaginationRepository,
    this._accountsRepository,
  ) : super(const SimplifiedAccountTransactionsState());

  final AccountTransactionsFilteredPaginationRepository _accountsTransactionPaginationRepository;
  final AccountsRepository _accountsRepository;

  Future<void> init() async {
    initPagination(
      _accountsTransactionPaginationRepository,
      initialFilter: AccountTransactionsFilter(
        // TODO(sergio): hardcoded account id
        accountIds: [UniqueId.fromUniqueString(1066.toString())],
        operationType: TransactionOperationType.all,
      ),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            transactions: const AsyncLoading<DateTimeListMap<SimplifiedAccountTransaction>>()
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

  void _listenToSelectedAccountChanges() {
    _accountsRepository.watchSelectedAccount().listen((accountIdOption) {
      AccountTransactionsFilter? filter = null;

      // No account has been selected. Select first account
      if (accountIdOption.isNone()) {
        filter = AccountTransactionsFilter(
          // TODO(sergio): hardcoded account id
          accountIds: [UniqueId.fromUniqueString(1066.toString())],
          operationType: TransactionOperationType.all,
        );
      }

      // An account has been previously selected. Update filter and refresh
      else if (accountIdOption.isSome()) {
        final accountId = accountIdOption.fold(() => null, (t) => t);
        if (accountId == null) return;

        // No filter has been set. Create filter with selected account
        if (filter == null) {
          filter = AccountTransactionsFilter(
            accountIds: [accountId],
            operationType: TransactionOperationType.all,
          );
        }
        // Filter has been set. Update filter with selected account
        else {
          filter = filter.copyWith(
            accountIds: [accountId],
          );
        }

        refresh();
      }
    });
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
              operationType: state.operationType,
              description: state.search,
              amountFrom: state.amountFrom,
              amountTo: state.amountTo,
              dateFrom: state.startDate,
              dateTo: state.endDate,
            ) ??
        AccountTransactionsFilter(
          accountIds: [UniqueId.fromUniqueString(1066.toString())],
          operationType: TransactionOperationType.all,
        );

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        operationType: TransactionOperationType.all,
        amountFrom: null,
        amountTo: null,
        startDate: null,
        endDate: null,
        search: '',
      ),
    );

    await applyFilters();
  }

  void setSearch(String search) {
    state = state.copyWith(search: search);
    applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(startDate: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(endDate: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(amountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(amountTo: amountTo);
  }

  void setCategory(String category) {
    state = state.copyWith(category: category);
  }

  void setOperationType(TransactionOperationType operationType) {
    state = state.copyWith(operationType: operationType);
  }

  // @override
  // Future<void> dispose() async {
  //   await resetFilters();
  //   await super.dispose();
  // }
}
