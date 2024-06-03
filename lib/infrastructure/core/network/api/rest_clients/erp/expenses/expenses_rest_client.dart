import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/overview_expenses_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'expenses_rest_client.g.dart';

final expensesRestClientProvider = Provider<ExpensesRestClient>((ref) {
  return ExpensesRestClient(ref.watch(dioProvider));
});

@RestApi()
abstract class ExpensesRestClient {
  factory ExpensesRestClient(Dio dio) = _ExpensesRestClient;

  @GET('/erp/expenses/v1/{erpContractId}/query')
  Future<PaginatedResponse<ExpenseDto>> getExpenses({
    @Path('erpContractId') required int erpContractId,
    @Query('') required ExpenseFilterDto filter,
  });

  @GET('erp/expenses/v1/overview')
  Future<OverviewExpensesDto> getOverviewExpenses({
    @Path('erpContractId') required int erpContractId,
    @Query('segmentPeriod') required OverviewSegmentPeriodDto segmentPeriod,
  });
}
