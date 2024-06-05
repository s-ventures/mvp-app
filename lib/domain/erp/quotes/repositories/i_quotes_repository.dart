import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/overview_quotes.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/detailed_quote_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/overview_quotes_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/quotation_failure.dart';

abstract class IQuotesRepository {
  Future<Either<QuotationFailure, List<Quotation>>> getQuotes({
    required int erpContractId,
    required QuotationFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedQuoteFailure, DetailedQuote>> getDetailedQuote({
    required int contractId,
    required int id,
  });

  Future<Either<OverviewQuotesFailure, OverviewQuotes>> getOverviewQuotes({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  });
}
