import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/repositories/sent_transfers_pagination_repository.dart';

final simplifiedSentTransfersControllerProvider =
    StateNotifierProvider<SimplifiedSentTransfersController, SimplifiedSentTransfersState>(
  (ref) => SimplifiedSentTransfersController(
    ref.watch(sentTransfersPaginationRepositoryProvider),
  ),
);

class SimplifiedSentTransfersController extends StateNotifier<SimplifiedSentTransfersState>
    with PaginationLoadingProvider<List<SimplifiedSentTransfer>> {
  SimplifiedSentTransfersController(
    this._repository,
  ) : super(const SimplifiedSentTransfersState());

  final SentTransfersPaginationRepository _repository;

  //To be used in Ver todas option
  Future<void> init() async {
    initPagination(
      _repository,
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

  Future<void> updateFilter({
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
  }) async {
    _repository.updateFilter(
      amountFrom: amountFrom,
      amountTo: amountTo,
      startDateFrom: dateFrom,
      startDateTo: dateTo,
    );
    await refresh();
  }
}
