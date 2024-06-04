import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/failures/detailed_quote_failure.dart';

// ignore: one_member_abstracts
abstract class IQuotesRepository {
  Future<Either<DetailedQuoteFailure, DetailedQuote>> getDetailedQuote({
    required int contractId,
    required int id,
  });
}
