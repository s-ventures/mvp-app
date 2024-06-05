import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/filter/filter_simplified_card_transactions_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/transactions/simplified/simplified_card_transactions_controller.dart';

final filterSimplifiedCardTransactionsControllerProvider =
    StateNotifierProvider<FilterSimplifiedCardTransactionsController, FilterSimplifiedCardTransactionsState>(
  (ref) => FilterSimplifiedCardTransactionsController(
    ref.read(simplifiedCardTransactionsControllerProvider.notifier),
  ),
);

class FilterSimplifiedCardTransactionsController extends StateNotifier<FilterSimplifiedCardTransactionsState> {
  FilterSimplifiedCardTransactionsController(
    this._simplifiedCardTransactionsController,
  ) : super(const FilterSimplifiedCardTransactionsState());

  final SimplifiedCardTransactionsController _simplifiedCardTransactionsController;

  Future<void> applyFilters() async {
    await _simplifiedCardTransactionsController.updateFilter(
      concept: state.search,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedCardTransactionsState();
    await applyFilters();
  }

  void setSearch(String search) {
    state = state.copyWith(search: search);
    applyFilters();
  }
}
