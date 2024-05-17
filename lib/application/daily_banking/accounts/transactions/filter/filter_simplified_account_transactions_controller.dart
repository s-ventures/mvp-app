import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';

final filterSimplifiedAccountTransactionsControllerProvider = StateNotifierProvider.autoDispose<
    FilterSimplifiedAccountTransactionsController, FilterSimplifiedAccountTransactionsState>(
  (ref) => FilterSimplifiedAccountTransactionsController(
    ref.read(simplifiedAccountTransactionsControllerProvider.notifier),
  ),
);

class FilterSimplifiedAccountTransactionsController
    extends StateNotifier<FilterSimplifiedAccountTransactionsState> {
  FilterSimplifiedAccountTransactionsController(
    this._simplifiedAccountTransactionsController,
  ) : super(const FilterSimplifiedAccountTransactionsState());

  final SimplifiedAccountTransactionsController _simplifiedAccountTransactionsController;

  Future<void> applyFilters() async {
    await _simplifiedAccountTransactionsController.updateFilter(
      description: state.search,
      amountFrom: state.amountFrom,
      amountTo: state.amountTo,
      dateFrom: state.startDate,
      dateTo: state.endDate,
      operationType: state.operationType,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedAccountTransactionsState();
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
