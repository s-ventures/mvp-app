import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/accounts_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/detailed_account_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/simplified_account_dto.dart';

class AccountsRemoteDataSource {
  AccountsRemoteDataSource(this._restClient);

  final AccountsRestClient _restClient;

  Future<PaginatedResponse<SimplifiedAccountDto>> getSimplifiedAccounts({
    required PaginatedRequest paginatedRequest,
  }) {
    try {
      return _restClient.getSimplifiedAccounts(
        paginatedRequest: paginatedRequest,
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedAccountDto> getDetailedAccount({
    required String accountId,
  }) {
    try {
      return _restClient.getDetailedAccount(accountId: accountId);
    } catch (_) {
      rethrow;
    }
  }
}
