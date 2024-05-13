import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/account_balances_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/balances/account_balance_dto.dart';

class AccountBalancesRemoteDataSource {
  AccountBalancesRemoteDataSource(this._restClient);

  final AccountBalancesRestClient _restClient;

  Future<AccountBalanceDto> getAccountBalance({
    required String accountId,
  }) async {
    try {
      return await _restClient.getAccountBalance(accountId: accountId);
    } catch (_) {
      rethrow;
    }
  }
}
