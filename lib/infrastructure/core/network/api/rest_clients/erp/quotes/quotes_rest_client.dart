import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/overview_quotes_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_filter_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'quotes_rest_client.g.dart';

final quotesRestClientProvider = Provider<QuotesRestClient>((ref) {
  return QuotesRestClient(ref.watch(dioProvider));
});

@RestApi()
abstract class QuotesRestClient {
  factory QuotesRestClient(Dio dio) = _QuotesRestClient;

  @GET('/erp/quotes/v1/{erpContractId}/query')
  Future<PaginatedResponse<QuotationDto>> getQuotes({
    @Path('erpContractId') required int erpContractId,
    @Query('') required QuotationFilterDto filter,
  });

  @GET('/erp/quotes/v1/{contractId}/{id}')
  Future<DetailedQuoteDto> getDetailedQuote({
    @Path('contractId') required int contractId,
    @Path('id') required int id,
  });

  @GET('erp/quotes/v1/overview')
  Future<OverviewQuotesDto> getOverviewQuotes({
    @Path('erpContractId') required int erpContractId,
    @Query('segmentPeriod') required OverviewSegmentPeriodDto segmentPeriod,
  });
}
