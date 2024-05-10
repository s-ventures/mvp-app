import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/aggregation/aggregation_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/status_dto.dart';

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

  Future<bool> registerCredentials(String credentialsId) async {
    try {
      final response =
          await _restClient.registerCredentials(credentialsId: credentialsId);
      return response
          .map((e) => e.status)
          .every((element) => element == StatusDto.success);
    } catch (_) {
      rethrow;
    }
  }
}
