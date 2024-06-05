import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/expenses/expenses_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/detailed_expense_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/overview_expenses_dto.dart';

class ExpensesRemoteDataSource {
  ExpensesRemoteDataSource(this._restClient);

  final ExpensesRestClient _restClient;

  Future<PaginatedResponse<ExpenseDto>> getExpenses({
    required ExpenseFilterDto filterDto,
    required int erpContractId,
  }) {
    try {
      return _restClient.getExpenses(
        filter: filterDto,
        erpContractId: erpContractId,
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedExpenseDto> getDetailedExpense({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _restClient.getDetailedExpense(
        contractId: contractId,
        id: id,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<OverviewExpensesDto> getOverviewExpenses({
    required int erpContractId,
    required OverviewSegmentPeriodDto segmentPeriod,
  }) async {
    try {
      final response = await _restClient.getOverviewExpenses(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
