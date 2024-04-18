import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/banking_aggregation/banking_aggregation_url_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'banking_aggregation_rest_client.g.dart';

final bankingAggregationRestClientProvider =
    Provider<BankingAggregationRestClient>(
  (ref) => BankingAggregationRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class BankingAggregationRestClient {
  factory BankingAggregationRestClient(Dio dio) = _BankingAggregationRestClient;

  @GET('/accounts/v1/integrations/tink/get-link')
  Future<BankingAggregationUrlDto> getAggregationServiceUrl();
}
