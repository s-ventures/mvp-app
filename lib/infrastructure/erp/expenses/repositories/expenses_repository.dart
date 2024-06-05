import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/overview_expenses.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/expense_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/overview_expenses_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/repositories/i_expenses_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/expenses/expenses_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/data_sources/expenses_remote_data_sources.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/overview_expenses_dto.dart';

final expensesRepositoryProvider = Provider<ExpensesRepository>(
  (ref) => ExpensesRepository(
    remoteDataSource: ExpensesRemoteDataSource(
      ref.watch(expensesRestClientProvider),
    ),
  ),
);

class ExpensesRepository implements IExpensesRepository {
  ExpensesRepository({
    required ExpensesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final ExpensesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<ExpenseFailure, List<Expense>>> getExpenses({
    required int erpContractId,
    required ExpenseFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = ExpenseFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getExpenses(
        filterDto: filterDto,
        erpContractId: erpContractId,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final expenses = response.data.map((e) => e.toDomain()).toList();
      return right(expenses);
    } catch (_) {
      return left(const ExpenseFailure.unexpected());
    }
  }

  @override
  Future<Either<OverviewExpensesFailure, OverviewExpenses>> getOverviewExpenses({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  }) async {
    try {
      final response = await _remoteDataSource.getOverviewExpenses(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod.toDto(),
      );
      final overview = response.toDomain();
      return right(overview);
    } catch (_) {
      return left(const OverviewExpensesFailure.unexpected());
    }
  }
}
