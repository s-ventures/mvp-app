import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/erp/expenses/detailed/detailed_expense_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/repositories/expenses_repository.dart';

final detailedExpenseControllerProvider =
    StateNotifierProvider<DetailedExpenseController, DetailedExpenseState>(
  (ref) => DetailedExpenseController(
    ref.watch(expensesRepositoryProvider),
  ),
);

class DetailedExpenseController extends StateNotifier<DetailedExpenseState> {
  DetailedExpenseController(this._repository) : super(const DetailedExpenseState());

  // TODO: Replace with interface
  final ExpensesRepository _repository;

  Future<void> init(int contractId, int id) async {
    try {
      final expenseOrFailure = await _repository.getDetailedExpense(
        contractId: contractId,
        id: id,
      );

      setStateSafe(
        () => state = expenseOrFailure.fold(
          (l) => state.copyWith(expense: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(expense: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(expense: AsyncError(e, StackTrace.current));
    }
  }
}
