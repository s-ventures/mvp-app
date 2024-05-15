import 'package:dio/dio.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/date_account_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/detailed_account_transaction_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_transactions_rest_client.g.dart';

final accountTransactionsRestClientProvider =
    Provider<AccountTransactionsRestClient>(
  (ref) => AccountTransactionsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class AccountTransactionsRestClient {
  factory AccountTransactionsRestClient(Dio dio) =
      _AccountTransactionsRestClient;

  @GET('/accounts/v1/query/transactions')
  Future<PaginatedResponse<DateAccountTransactionsDto>>
      getSimplifiedAccountTransactions({
    @Query('') required AccountTransactionsFilterDto filter,
  });

  @GET('/accounts/v1/{accountId}/transactions/{transactionId}')
  Future<DetailedAccountTransactionDto> getDetailedAccountTransaction({
    @Path('accountId') required String accountId,
    @Path('transactionId') required String transactionId,
  });
}
