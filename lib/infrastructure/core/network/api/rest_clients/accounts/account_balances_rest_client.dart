import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/balances/account_balance_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'account_balances_rest_client.g.dart';

final accountBalancesRestClientProvider = Provider<AccountBalancesRestClient>(
  (ref) => AccountBalancesRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class AccountBalancesRestClient {
  factory AccountBalancesRestClient(Dio dio) = _AccountBalancesRestClient;

  @GET('/accounts/v1/{accountId}/balance')
  Future<AccountBalanceDto> getAccountBalance({
    @Path('accountId') required String accountId,
  });
}
