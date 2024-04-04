import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/repositories/card_transactions_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/repositories/cards_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';

final cardTransactionsPaginationRepositoryProvider =
    Provider<CardTransactionsPaginationRepository>(
  (ref) => CardTransactionsPaginationRepository(
    ref.watch(simplifiedCardTransactionsRepositoryProvider),
    ref.watch(cardsRepositoryProvider),
  ),
);

class CardTransactionsPaginationRepository
    extends PaginationRepository<SimplifiedCardTransaction> {
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
  Future<List<SimplifiedCardTransaction>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;
    if (filter == null) {
      return [];
    }

    final transactions =
        await _transactionsRepository.getSimplifiedCardTransactions(
      filter: filter,
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return transactions.fold((l) => <SimplifiedCardTransaction>[], (r) => r);
  }

  // ignore: use_setters_to_change_properties
  void setFilter({
    required String? concept,
  }) {
    _filter = _filter?.copyWith(
      concept: concept,
    );
  }
}
