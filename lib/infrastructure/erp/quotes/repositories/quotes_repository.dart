import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/overview_quotes.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/detailed_quote_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/overview_quotes_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/quotation_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/repositories/i_quotes_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/quotes/quotes_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/data_sources/remote/quotes_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/overview_quotes_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_filter_dto.dart';

final quotesRepositoryProvider = Provider<QuotesRepository>(
  (ref) => QuotesRepository(
    remoteDataSource: QuotesRemoteDataSource(
      ref.watch(quotesRestClientProvider),
    ),
  ),
);

class QuotesRepository implements IQuotesRepository {
  QuotesRepository({
    required QuotesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final QuotesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<QuotationFailure, List<Quotation>>> getQuotes({
    required int erpContractId,
    required QuotationFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = QuotationFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getQuotes(
        filterDto: filterDto,
        erpContractId: erpContractId,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final quotes = response.data.map((e) => e.toDomain()).toList();
      return right(quotes);
    } catch (_) {
      return left(const QuotationFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedQuoteFailure, DetailedQuote>> getDetailedQuote({
    required int contractId,
    required int id,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedQuote(
        contractId: contractId,
        id: id,
      );

      final quote = response.toDomain();
      return right(quote);
    } catch (_) {
      return left(const DetailedQuoteFailure.unexpected());
    }
  }

  @override
  Future<Either<OverviewQuotesFailure, OverviewQuotes>> getOverviewQuotes({
    required int erpContractId,
    required OverviewSegmentPeriod segmentPeriod,
  }) async {
    try {
      final response = await _remoteDataSource.getOverviewQuotes(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod.toDto(),
      );
      final overview = response.toDomain();
      return right(overview);
    } catch (_) {
      return left(const OverviewQuotesFailure.unexpected());
    }
  }
}
