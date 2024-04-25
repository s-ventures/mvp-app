import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/aggregation/dtos/aggregation_url_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'aggregation_rest_client.g.dart';

final aggregationRestClientProvider = Provider<AggregationRestClient>(
  (ref) => AggregationRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class AggregationRestClient {
  factory AggregationRestClient(Dio dio) = _AggregationRestClient;

  @GET('/accounts/v1/integrations/tink/get-link')
  Future<AggregationUrlDto> getAggregationServiceUrl();
}
