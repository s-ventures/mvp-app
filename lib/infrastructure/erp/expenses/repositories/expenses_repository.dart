import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/detailed_expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/failures/detailed_expense_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/repositories/i_expenses_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/expenses_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/data_source/remote/expenses_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/detailed_expense_dto.dart';

final expensesRepositoryProvider = Provider<ExpensesRepository>(
  (ref) => ExpensesRepository(
    remoteDataSource: ExpensesRemoteDataSource(
      ref.watch(
        expensesRestClientProvider,
      ),
    ),
  ),
);

class ExpensesRepository implements IExpensesRepository {
  ExpensesRepository({
    required ExpensesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final ExpensesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<DetailedExpenseFailure, DetailedExpense>> getDetailedExpense({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedExpense(
        contractId: contractId,
        id: id,
      );

      final expense = response.toDomain();
      return right(expense);
    } catch (_) {
      return left(const DetailedExpenseFailure.unexpected());
    }
  }
}
