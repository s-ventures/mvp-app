import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/detailed_expense_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'expenses_rest_client.g.dart';

final expensesRestClientProvider = Provider<ExpensesRestClient>(
  (ref) => ExpensesRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class ExpensesRestClient {
  factory ExpensesRestClient(Dio dio) = _ExpensesRestClient;

  @GET('/erp/expenses/v1/{contractId}/{id}')
  Future<DetailedExpenseDto> getDetailedExpense({
    @Path('contractId') required int contractId,
    @Path('id') required int id,
  });
}
