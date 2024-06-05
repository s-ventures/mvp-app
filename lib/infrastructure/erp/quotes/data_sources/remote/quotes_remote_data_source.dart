import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/quotes/quotes_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/overview_quotes_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_filter_dto.dart';

class QuotesRemoteDataSource {
  QuotesRemoteDataSource(this._restClient);

  final QuotesRestClient _restClient;

  Future<PaginatedResponse<QuotationDto>> getQuotes({
    required QuotationFilterDto filterDto,
    required int erpContractId,
  }) {
    try {
      return _restClient.getQuotes(
        filter: filterDto,
        erpContractId: erpContractId,
      );
    } catch (_) {
      rethrow;
    }
  }

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

  Future<OverviewQuotesDto> getOverviewQuotes({
    required int erpContractId,
    required OverviewSegmentPeriodDto segmentPeriod,
  }) async {
    try {
      final response = await _restClient.getOverviewQuotes(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod,
      );

      return response;
    } catch (_) {
      rethrow;
    }
  }
}
