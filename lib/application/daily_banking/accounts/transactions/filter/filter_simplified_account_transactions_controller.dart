import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/filter/filter_simplified_account_transactions_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transactions/simplified/simplified_account_transactions_controller.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';

final filterSimplifiedAccountTransactionsControllerProvider =
    StateNotifierProvider<FilterSimplifiedAccountTransactionsController,
        FilterSimplifiedAccountTransactionsState>(
  (ref) => FilterSimplifiedAccountTransactionsController(
    ref.read(simplifiedAccountTransactionsControllerProvider.notifier),
  ),
);

class FilterSimplifiedAccountTransactionsController
    extends StateNotifier<FilterSimplifiedAccountTransactionsState> {
  FilterSimplifiedAccountTransactionsController(
    this._simplifiedAccountTransactionsController,
  ) : super(const FilterSimplifiedAccountTransactionsState());

  final SimplifiedAccountTransactionsController
      _simplifiedAccountTransactionsController;

  Future<void> applyFilters() async {
    await _simplifiedAccountTransactionsController.updateFilter(
      description: state.search,
      amountFrom: state.amountFrom,
      amountTo: state.amountTo,
      dateFrom: state.startDate,
      dateTo: state.endDate,
      creditDebit: state.selectedIndexCreditDebit == 0
          ? null
          : state.creditDebitList.firstOrNull,
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

  void setSelecteIndexCreditDebit(int index) {
    state = state.copyWith(selectedIndexCreditDebit: index);
  }
}
