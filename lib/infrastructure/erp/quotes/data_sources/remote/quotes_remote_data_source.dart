import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/quotes_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';

class QuotesRemoteDataSource {
  QuotesRemoteDataSource(this._restClient);

  final QuotesRestClient _restClient;

  Future<DetailedQuoteDto> getDetailedQuote({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _restClient.getDetailedQuote(
        contractId: contractId,
        id: id,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
