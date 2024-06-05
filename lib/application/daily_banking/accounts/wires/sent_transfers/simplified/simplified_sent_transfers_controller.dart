import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/repositories/sent_transfers_filtered_pagination_repository.dart';

final simplifiedSentTransfersControllerProvider = StateNotifierProvider.autoDispose<
    SimplifiedSentTransfersController, SimplifiedSentTransfersState>(
  (ref) => SimplifiedSentTransfersController(
    ref.watch(sentTransfersFilteredPaginationRepositoryProvider),
  ),
);

class SimplifiedSentTransfersController extends StateNotifier<SimplifiedSentTransfersState>
    with FilteredPaginationLoadingProvider<List<SimplifiedSentTransfer>, SentTransfersFilter> {
  SimplifiedSentTransfersController(
    this._repository,
  ) : super(const SimplifiedSentTransfersState());

  final SentTransfersFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const SentTransfersFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            sentTransfers: const AsyncLoading<List<SimplifiedSentTransfer>>()
                .copyWithPrevious(state.sentTransfers),
          ),
        );
      },
      onDataLoaded: (sentTransfers) {
        setStateSafe(
          () => state.copyWith(sentTransfers: sentTransfers),
        );
      },
    );
  }

  Future<void> initLastSentTransfers() async {
    try {
      final lastSentTransfers = await _repository.fetchPage(page: 0, pageSize: 5);
      setStateSafe(
        () => state.copyWith(lastSentTransfers: AsyncData(lastSentTransfers)),
      );
    } catch (e) {
      setStateSafe(
        () => state.copyWith(
          lastSentTransfers: AsyncError(e, StackTrace.current),
        ),
      );
    }
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          settlementAmountFrom: state.amountFrom,
          settlementAmountTo: state.amountTo,
          orderDateFrom: state.startDate,
          orderDateTo: state.endDate,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        amountFrom: null,
        amountTo: null,
        startDate: null,
        endDate: null,
      ),
    );
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(startDate: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(endDate: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(amountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(amountTo: amountTo);
  }
}
