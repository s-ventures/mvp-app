import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/banking_aggregation_rest_client.dart';

class BankingAggregationRemoteDataSource {
  BankingAggregationRemoteDataSource(this._restClient);

  final BankingAggregationRestClient _restClient;

  Future<String> getAggregationServiceUrl() async {
    try {
      final response = await _restClient.getAggregationServiceUrl();
      return response.fullLink;
    } catch (_) {
      rethrow;
    }
  }
}
