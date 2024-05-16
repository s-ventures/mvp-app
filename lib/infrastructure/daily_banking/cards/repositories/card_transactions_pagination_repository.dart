import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_map_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/cards_repository.dart';

final cardTransactionsPaginationRepositoryProvider = Provider<CardTransactionsPaginationRepository>(
  (ref) => CardTransactionsPaginationRepository(
    ref.watch(cardTransactionsRepositoryProvider),
    ref.watch(cardsRepositoryProvider),
  ),
);

class CardTransactionsPaginationRepository extends PaginationMapRepository<DateTime, List<SimplifiedCardTransaction>> {
  CardTransactionsPaginationRepository(
    this._transactionsRepository,
    this._cardsRepository,
  ) {
    _listenToSelectedCardChanges();
  }

  final CardTransactionsRepository _transactionsRepository;
  final CardsRepository _cardsRepository;
  CardTransactionsFilter? _filter;

  void _listenToSelectedCardChanges() {
    _cardsRepository.watchSelectedCard().listen((cardRecordOption) {
      // No card has been selected. Select first card
      if (cardRecordOption.isNone()) {
        _filter = CardTransactionsFilter(
          // TODO(sergio): hardcoded card id
          cardContractIds: [UniqueId.fromUniqueString(1068.toString())],
          cardIds: [UniqueId.fromUniqueString(50.toString())],
          operationType: TransactionOperationType.all,
        );
      }

      // A card has been previously selected. Update filter and refresh
      else if (cardRecordOption.isSome()) {
        final cardRecord = cardRecordOption.fold(() => null, (t) => t);
        if (cardRecord == null) return;

        final cardContractId = cardRecord.$1;
        final cardId = cardRecord.$2;

        // No filter has been set. Create filter with selected card
        if (_filter == null) {
          _filter = CardTransactionsFilter(
            cardContractIds: [cardContractId],
            cardIds: [cardId],
            operationType: TransactionOperationType.all,
          );
        }
        // Filter has been set. Update filter with selected card
        else {
          _filter = _filter!.copyWith(
            cardContractIds: [cardContractId],
            cardIds: [cardId],
          );
        }

        refresh();
      }
    });
  }

  @override
  Future<Map<DateTime, List<SimplifiedCardTransaction>>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;
    if (filter == null) {
      return <DateTime, List<SimplifiedCardTransaction>>{};
    }

    final transactions = await _transactionsRepository.getSimplifiedCardTransactions(
      filter: filter,
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return transactions.fold(
      (l) => <DateTime, List<SimplifiedCardTransaction>>{},
      (r) => r,
    );
  }

  // ignore: use_setters_to_change_properties
  void setFilter({
    required String? concept,
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
    required TransactionOperationType operationType,
  }) {
    _filter = _filter?.copyWith(
      concept: concept,
      amountFrom: amountFrom,
      amountTo: amountTo,
      dateFrom: dateFrom,
      dateTo: dateTo,
      operationType: operationType,
    );
  }
}
