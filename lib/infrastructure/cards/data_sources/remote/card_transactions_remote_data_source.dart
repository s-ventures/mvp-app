import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/simplified_card_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/cards/card_transactions_rest_client.dart';

class CardTransactionsRemoteDataSource {
  CardTransactionsRemoteDataSource(this._restClient);

  final CardTransactionsRestClient _restClient;

  Future<PaginatedResponse<SimplifiedCardTransactionDto>>
      getSimplifiedCardTransactions({
    required CardTransactionsFilterDto filterDto,
  }) async {
    try {
      return await _restClient.getSimplifiedCardTransactions(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }
}
