import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_map_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_transactions_repository.dart';

final accountTransactionsFilteredPaginationRepositoryProvider =
    Provider<AccountTransactionsFilteredPaginationRepository>(
  (ref) => AccountTransactionsFilteredPaginationRepository(
    ref.watch(accountTransactionsRepositoryProvider),
  ),
);

class AccountTransactionsFilteredPaginationRepository extends IFilteredPaginationMapRepository<
    DateTime, List<SimplifiedAccountTransaction>, AccountTransactionsFilter> {
  AccountTransactionsFilteredPaginationRepository(this._transactionRepository);

  final AccountTransactionsRepository _transactionRepository;

  @override
  Future<Map<DateTime, List<SimplifiedAccountTransaction>>> fetchPage({
    required int page,
    required int pageSize,
    AccountTransactionsFilter? filter,
  }) async {
    if (filter == null) {
      return <DateTime, List<SimplifiedAccountTransaction>>{};
    }

    final transactions = await _transactionRepository.getSimplifiedAccountTransactions(
      filter: filter,
      page: page,
      pageSize: pageSize,
    );
    return transactions.fold(
      (l) => <DateTime, List<SimplifiedAccountTransaction>>{},
      (r) => r,
    );
  }
}
