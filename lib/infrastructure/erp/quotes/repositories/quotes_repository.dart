import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/detailed_quote_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/repositories/i_quotes_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/quotes_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/data_sources/remote/quotes_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/detailed_quote_dto.dart';

final quotesRepositoryProvider = Provider<QuotesRepository>(
  (ref) => QuotesRepository(
    remoteDataSource: QuotesRemoteDataSource(
      ref.watch(
        quotesRestClientProvider,
      ),
    ),
  ),
);

class QuotesRepository implements IQuotesRepository {
  QuotesRepository({
    required QuotesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final QuotesRemoteDataSource _remoteDataSource;

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
}
