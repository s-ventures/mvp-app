import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/pending/pending_quotes_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_pagination_repository.dart';

final pendingQuotesControllerProvider =
    StateNotifierProvider.autoDispose<PendingQuotesController, PendingQuotesState>(
  (ref) => PendingQuotesController(
    ref.watch(quotesPaginationRepositoryProvider),
  ),
);

class PendingQuotesController extends StateNotifier<PendingQuotesState>
    with PaginationLoadingProvider<List<Quotation>> {
  PendingQuotesController(
    this._repository,
  ) : super(const PendingQuotesState());

  final QuotesPaginationRepository _repository;

  Future<void> init() async {
    // TODO(georgeta): Filtrar por estado pendiente cuando se implemente en el BFMF
    await updateFilter(status: QuotationStatus.sent);
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            pendingQuotes:
                const AsyncLoading<List<Quotation>>().copyWithPrevious(state.pendingQuotes),
          ),
        );
      },
      onDataLoaded: (pendingQuotes) {
        setStateSafe(
          () => state.copyWith(pendingQuotes: pendingQuotes),
        );
      },
    );
  }

  Future<void> updateFilter({
    required QuotationStatus? status,
  }) async {
    _repository.updateFilter(
      status: status,
    );
    await refresh();
  }
}
