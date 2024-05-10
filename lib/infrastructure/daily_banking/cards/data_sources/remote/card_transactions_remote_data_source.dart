import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/cards/card_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/date_card_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';

class CardTransactionsRemoteDataSource {
  CardTransactionsRemoteDataSource(this._restClient);

  final CardTransactionsRestClient _restClient;

  Future<PaginatedResponse<DateCardTransactionsDto>>
      getSimplifiedCardTransactions({
    required CardTransactionsFilterDto filterDto,
  }) async {
    try {
      return await _restClient.getSimplifiedCardTransactions(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedCardTransactionDto> getDetailedCardTransaction({
    required int cardContractId,
    required int transactionId,
  }) async {
    try {
      final response = await _restClient.getDetailedCardTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
