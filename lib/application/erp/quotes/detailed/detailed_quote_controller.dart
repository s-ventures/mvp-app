import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/detailed/detailed_quote_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/repositories/i_quotes_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_repository.dart';

final detailedQuoteControllerProvider =
    StateNotifierProvider<DetailedQuoteController, DetailedQuoteState>(
  (ref) => DetailedQuoteController(
    ref.watch(quotesRepositoryProvider),
  ),
);

class DetailedQuoteController extends StateNotifier<DetailedQuoteState> {
  DetailedQuoteController(this._repository) : super(const DetailedQuoteState());

  final IQuotesRepository _repository;

  Future<void> init(int contractId, int id) async {
    try {
      final quoteOrFailure = await _repository.getDetailedQuote(
        contractId: contractId,
        id: id,
      );

      setStateSafe(
        () => state = quoteOrFailure.fold(
          (l) => state.copyWith(quote: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(quote: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(quote: AsyncError(e, StackTrace.current));
    }
  }
}
