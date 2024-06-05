import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';

part 'expenses_state.freezed.dart';

@freezed
class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    @Default(AsyncLoading<List<Expense>>()) AsyncValue<List<Expense>> expenses,
    @Default(AsyncLoading<List<Expense>>()) AsyncValue<List<Expense>> pendingExpenses,
    // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    ExpenseStatus? status,
  }) = _ExpensesState;
}
