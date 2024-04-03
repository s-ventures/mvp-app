import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';

final filterSimplifiedAccountTransactionsControllerProvider =
    StateNotifierProvider<FilterSimplifiedAccountTransactionsController, FilterSimplifiedAccountTransactionsState>(
  (ref) => FilterSimplifiedAccountTransactionsController(
    ref.read(simplifiedAccountTransactionsControllerProvider.notifier),
  ),
);

class FilterSimplifiedAccountTransactionsController extends StateNotifier<FilterSimplifiedAccountTransactionsState> {
  FilterSimplifiedAccountTransactionsController(
    this._simplifiedAccountTransactionsController,
  ) : super(const FilterSimplifiedAccountTransactionsState());

  final SimplifiedAccountTransactionsController _simplifiedAccountTransactionsController;

  Future<void> applyFilters() async {
    await _simplifiedAccountTransactionsController.updateFilter(
      description: state.search,
      amountFrom: state.amountRange?.start,
      amountTo: state.amountRange?.end,
      dateFrom: state.startDate,
      dateTo: state.endDate,
      creditDebit: state.creditDebitList.length == 2 ? null : state.creditDebitList.firstOrNull,
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

  void setAmountRange(RangeValues? range) {
    state = state.copyWith(amountRange: range);
  }

  void setCategory(String category) {
    state = state.copyWith(category: category);
  }

  void selectCreditDebit(AccountTransactionCreditDebit? creditDebit) {
    if (creditDebit == null) {
      state = state.copyWith(creditDebitList: []);
      return;
    }

    final types = state.creditDebitList.toSet();

    if (types.contains(creditDebit)) {
      types.remove(creditDebit);
    } else {
      types.add(creditDebit);
    }

    state = state.copyWith(creditDebitList: types.toList());
  }
}
