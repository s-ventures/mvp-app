import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'quotes_rest_client.g.dart';

final quotesRestClientProvider = Provider<QuotesRestClient>(
  (ref) => QuotesRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class QuotesRestClient {
  factory QuotesRestClient(Dio dio) = _QuotesRestClient;

  @GET('/erp/quotes/v1/{contractId}/{id}')
  Future<DetailedQuoteDto> getDetailedQuote({
    @Path('contractId') required int contractId,
    @Path('id') required int id,
  });
}
