import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/detailed_expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/detailed_expense_failure.dart';

// ignore: one_member_abstracts
abstract class IExpensesRepository {
  Future<Either<DetailedExpenseFailure, DetailedExpense>> getDetailedExpense({
    required int contractId,
    required int id,
  });
}
