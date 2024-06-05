import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/detailed_expense.dart';

part 'detailed_expense_state.freezed.dart';

@freezed
class DetailedExpenseState with _$DetailedExpenseState {
  const factory DetailedExpenseState({
    @Default(AsyncLoading<DetailedExpense>()) AsyncValue<DetailedExpense> expense,
  }) = _DetailedExpenseState;
}
