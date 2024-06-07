import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_map_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_repository.dart';

final cardTransactionsFilteredPaginationRepositoryProvider =
    Provider<CardTransactionsFilteredPaginationRepository>(
  (ref) => CardTransactionsFilteredPaginationRepository(
    ref.watch(cardTransactionsRepositoryProvider),
  ),
);

class CardTransactionsFilteredPaginationRepository extends IFilteredPaginationMapRepository<
    DateTime, List<SimplifiedCardTransaction>, CardTransactionsFilter> {
  CardTransactionsFilteredPaginationRepository(
    this._transactionsRepository,
  );

  final CardTransactionsRepository _transactionsRepository;

  @override
  Future<Map<DateTime, List<SimplifiedCardTransaction>>> fetchPage({
    required int page,
    required int pageSize,
    CardTransactionsFilter? filter,
  }) async {
    if (filter == null) {
      return <DateTime, List<SimplifiedCardTransaction>>{};
    }

    final transactions = await _transactionsRepository.getSimplifiedCardTransactions(
      filter: filter,
      page: page,
      pageSize: pageSize,
    );
    return transactions.fold(
      (l) => <DateTime, List<SimplifiedCardTransaction>>{},
      (r) => r,
    );
  }
}
