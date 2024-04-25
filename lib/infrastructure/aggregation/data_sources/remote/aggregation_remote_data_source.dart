import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/aggregation/aggregation_rest_client.dart';

class AggregationRemoteDataSource {
  AggregationRemoteDataSource(this._restClient);

  final AggregationRestClient _restClient;

  Future<String> getAggregationServiceUrl() async {
    try {
      final response = await _restClient.getAggregationServiceUrl();
      return response.fullLink;
    } catch (_) {
      rethrow;
    }
  }
}
