import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/quotes_state.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_filtered_pagination_repository.dart';

final quotesControllerProvider = StateNotifierProvider.autoDispose<QuotesController, QuotesState>(
  (ref) => QuotesController(
    ref.watch(quotesPaginationRepositoryProvider),
  ),
);

class QuotesController extends StateNotifier<QuotesState>
    with FilteredPaginationLoadingProvider<List<Quotation>, QuotationFilter> {
  QuotesController(
    this._repository,
  ) : super(const QuotesState());

  final IFilteredPaginationListRepository<Quotation, QuotationFilter> _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const QuotationFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            quotes: const AsyncLoading<List<Quotation>>().copyWithPrevious(state.quotes),
          ),
        );
      },
      onDataLoaded: (quotes) {
        setStateSafe(
          () => state.copyWith(quotes: quotes),
        );
        setPendingQuotes();
      },
    );
  }

  void setPendingQuotes() {
    final pendingQuotes =
        state.quotes.value?.where((element) => element.status == QuotationStatus.sent).toList();
    setStateSafe(
      () => state.copyWith(
        pendingQuotes: AsyncData(pendingQuotes ?? []),
      ),
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          createdDateFrom: state.createdDateFrom,
          createdDateTo: state.createdDateTo,
          totalAmountFrom: state.totalAmountFrom,
          totalAmountTo: state.totalAmountTo,
          status: state.status,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        createdDateFrom: null,
        createdDateTo: null,
        totalAmountFrom: null,
        totalAmountTo: null,
        status: null,
      ),
    );
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createdDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createdDateTo: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(totalAmountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(totalAmountTo: amountTo);
  }

  void setStatus(QuotationStatus? status) {
    state = state.copyWith(status: status);
  }
}
