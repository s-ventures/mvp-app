import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/expenses/expenses_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/repositories/expenses_filtered_pagination_repository.dart';

final expensesControllerProvider =
    StateNotifierProvider.autoDispose<ExpensesController, ExpensesState>(
  (ref) => ExpensesController(
    ref.watch(expensesPaginationRepositoryProvider),
  ),
);

class ExpensesController extends StateNotifier<ExpensesState>
    with FilteredPaginationLoadingProvider<List<Expense>, ExpenseFilter> {
  ExpensesController(
    this._repository,
  ) : super(const ExpensesState());

  // TODO: Replace with interface
  final ExpensesFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const ExpenseFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            expenses: const AsyncLoading<List<Expense>>().copyWithPrevious(state.expenses),
          ),
        );
      },
      onDataLoaded: (expenses) {
        setStateSafe(
          () => state.copyWith(expenses: expenses),
        );
        setPendingExpenses();
      },
    );
  }

  void setPendingExpenses() {
    final pendingExpenses =
        state.expenses.value?.where((element) => element.status == ExpenseStatus.paid).toList();
    setStateSafe(
      () => state.copyWith(
        pendingExpenses: AsyncData(pendingExpenses ?? []),
      ),
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          createdDateFrom: state.createdDateFrom,
          createdDateTo: state.createdDateTo,
          totalAmountFrom: state.totalAmountFrom,
          totalAmountTo: state.totalAmountTo,
          status: state.status,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        createdDateFrom: null,
        createdDateTo: null,
        totalAmountFrom: null,
        totalAmountTo: null,
        status: null,
      ),
    );
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createdDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createdDateTo: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(totalAmountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(totalAmountTo: amountTo);
  }

  void setStatus(ExpenseStatus? status) {
    state = state.copyWith(status: status);
  }
}
