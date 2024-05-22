import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/simplified/simplified_quotes_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_pagination_repository.dart';

final simplifiedQuotesControllerProvider =
    StateNotifierProvider.autoDispose<SimplifiedQuotesController, SimplifiedQuotesState>(
  (ref) => SimplifiedQuotesController(
    ref.watch(quotesPaginationRepositoryProvider),
  ),
);

class SimplifiedQuotesController extends StateNotifier<SimplifiedQuotesState>
    with PaginationLoadingProvider<List<Quotation>> {
  SimplifiedQuotesController(
    this._repository,
  ) : super(const SimplifiedQuotesState());

  final QuotesPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
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
      },
    );
  }

  Future<void> updateFilter({
    required UniqueId? id,
    required UniqueId? stakeholderId,
    required DateTime? createdDateFrom,
    required DateTime? createdDateTo,
    required DateTime? issueDateFrom,
    required DateTime? issueDateTo,
    required double? totalAmountFrom,
    required double? totalAmountTo,
    required String? query,
    required QuotationStatus? status,
  }) async {
    _repository.updateFilter(
      id: id,
      stakeholderId: stakeholderId,
      createdDateFrom: createdDateFrom,
      createdDateTo: createdDateTo,
      issueDateFrom: issueDateFrom,
      issueDateTo: issueDateTo,
      totalAmountFrom: totalAmountFrom,
      totalAmountTo: totalAmountTo,
      query: query,
      status: status,
    );
    await refresh();
  }
}
