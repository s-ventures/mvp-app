import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/expenses_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/detailed_expense_dto.dart';

class ExpensesRemoteDataSource {
  ExpensesRemoteDataSource(this._restClient);

  final ExpensesRestClient _restClient;

  Future<DetailedExpenseDto> getDetailedExpense({
    required int erpContractId,
    required int expensesId,
  }) async {
    try {
      final response = await _restClient.getDetailedExpense(
        erpContractId: erpContractId,
        expensesId: expensesId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
