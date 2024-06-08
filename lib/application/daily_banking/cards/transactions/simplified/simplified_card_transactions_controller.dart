import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_state.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/card_transactions_filtered_pagination_repository.dart';

final simplifiedCardTransactionsControllerProvider = StateNotifierProvider.autoDispose<
    SimplifiedCardTransactionsController, SimplifiedCardTransactionsState>(
  (ref) => SimplifiedCardTransactionsController(
    ref.watch(cardTransactionsFilteredPaginationRepositoryProvider),
  ),
);

class SimplifiedCardTransactionsController extends StateNotifier<SimplifiedCardTransactionsState>
    with
        FilteredPaginationLoadingProvider<Map<DateTime, List<SimplifiedCardTransaction>>,
            CardTransactionsFilter> {
  SimplifiedCardTransactionsController(
    this._repository,
  ) : super(const SimplifiedCardTransactionsState());

  // TODO: Replace with interface
  final CardTransactionsFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: CardTransactionsFilter(
        // TODO(sergio): hardcoded card id
        cardContractIds: [UniqueId.fromUniqueString(1068.toString())],
        cardIds: [UniqueId.fromUniqueString(50.toString())],
        operationType: TransactionOperationType.all,
      ),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            transactions: const AsyncLoading<Map<DateTime, List<SimplifiedCardTransaction>>>()
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

  // void _listenToSelectedCardChanges() {
  //   _cardsRepository.watchSelectedCard().listen((cardRecordOption) {
  //     // No card has been selected. Select first card
  //     if (cardRecordOption.isNone()) {
  //       _filter = CardTransactionsFilter(
  //         // `TODO`(sergio): hardcoded card id
  //         cardContractIds: [UniqueId.fromUniqueString(1068.toString())],
  //         cardIds: [UniqueId.fromUniqueString(50.toString())],
  //         operationType: TransactionOperationType.all,
  //       );
  //     }

  //     // A card has been previously selected. Update filter and refresh
  //     else if (cardRecordOption.isSome()) {
  //       final cardRecord = cardRecordOption.fold(() => null, (t) => t);
  //       if (cardRecord == null) return;

  //       final cardContractId = cardRecord.$1;
  //       final cardId = cardRecord.$2;

  //       // No filter has been set. Create filter with selected card
  //       if (_filter == null) {
  //         _filter = CardTransactionsFilter(
  //           cardContractIds: [cardContractId],
  //           cardIds: [cardId],
  //           operationType: TransactionOperationType.all,
  //         );
  //       }
  //       // Filter has been set. Update filter with selected card
  //       else {
  //         _filter = _filter!.copyWith(
  //           cardContractIds: [cardContractId],
  //           cardIds: [cardId],
  //         );
  //       }

  //       refresh();
  //     }
  //   });
  // }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          concept: state.search,
          amountFrom: state.amountFrom,
          amountTo: state.amountTo,
          dateFrom: state.startDate,
          dateTo: state.endDate,
          operationType: state.operationType,
        );
    if (filter == null) return;
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
}
