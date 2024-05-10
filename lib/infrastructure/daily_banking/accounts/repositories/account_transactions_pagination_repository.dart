import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_map_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_transactions_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/accounts_repository.dart';

final accountTransactionsPaginationRepositoryProvider =
    Provider<AccountTransactionsPaginationRepository>(
  (ref) => AccountTransactionsPaginationRepository(
    ref.watch(accountTransactionsRepositoryProvider),
    ref.watch(accountsRepositoryProvider),
  ),
);

class AccountTransactionsPaginationRepository extends PaginationMapRepository<
    DateTime, List<SimplifiedAccountTransaction>> {
  AccountTransactionsPaginationRepository(
    this._transactionRepository,
    this._accountsRepository,
  ) {
    _listenToSelectedAccountChanges();
  }

  final AccountTransactionsRepository _transactionRepository;
  final AccountsRepository _accountsRepository;
  AccountTransactionsFilter? _filter;

  void _listenToSelectedAccountChanges() {
    _accountsRepository.watchSelectedAccount().listen((accountIdOption) {
      // No account has been selected. Select first account
      if (accountIdOption.isNone()) {
        _filter = AccountTransactionsFilter(
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
        if (_filter == null) {
          _filter = AccountTransactionsFilter(
            accountIds: [accountId],
            operationType: TransactionOperationType.all,
          );
        }
        // Filter has been set. Update filter with selected account
        else {
          _filter = _filter!.copyWith(
            accountIds: [accountId],
          );
        }

        refresh();
      }
    });
  }

  @override
  Future<Map<DateTime, List<SimplifiedAccountTransaction>>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;
    if (filter == null) {
      return <DateTime, List<SimplifiedAccountTransaction>>{};
    }

    final transactions =
        await _transactionRepository.getSimplifiedAccountTransactions(
      filter: filter,
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return transactions.fold(
      (l) => <DateTime, List<SimplifiedAccountTransaction>>{},
      (r) => r,
    );
  }

  void updateFilter({
    required String? description,
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
    required TransactionOperationType operationType,
  }) {
    _filter = _filter?.copyWith(
      description: description,
      amountFrom: amountFrom,
      amountTo: amountTo,
      dateFrom: dateFrom,
      dateTo: dateTo,
      operationType: operationType,
    );
  }
}
