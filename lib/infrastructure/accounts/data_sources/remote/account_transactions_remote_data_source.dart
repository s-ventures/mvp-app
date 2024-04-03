import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/detailed_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/simplified_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/account_transactions_rest_client.dart';

class AccountTransactionsRemoteDataSource {
  AccountTransactionsRemoteDataSource(this._restClient);

  final AccountTransactionsRestClient _restClient;

  Future<PaginatedResponse<SimplifiedAccountTransactionDto>> getSimplifiedAccountTransactions({
    required AccountTransactionsFilterDto filterDto,
  }) async {
    try {
      final response = await _restClient.getSimplifiedAccountTransactions(filter: filterDto);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedAccountTransactionDto> getDetailedAccountTransaction({
    required String accountId,
    required String transactionId,
  }) async {
    try {
      final response =
          await _restClient.getDetailedAccountTransaction(accountId: accountId, transactionId: transactionId);
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
