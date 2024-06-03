import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/overview_expenses.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/expense_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/overview_expenses_failure.dart';

abstract class IExpensesRepository {
  Future<Either<ExpenseFailure, List<Expense>>> getExpenses({
    required int erpContractId,
    required ExpenseFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<OverviewExpensesFailure, OverviewExpenses>> getOverviewExpenses({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  });
}
