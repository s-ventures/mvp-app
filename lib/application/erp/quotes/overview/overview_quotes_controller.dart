import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/erp/quotes/overview/overview_quotes_state.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_repository.dart';

final overviewQuotesControllerProvider =
    StateNotifierProvider.autoDispose<OverviewQuotesController, OverviewQuotesState>(
  (ref) => OverviewQuotesController(ref.watch(quotesRepositoryProvider)),
);

class OverviewQuotesController extends StateNotifier<OverviewQuotesState> {
  OverviewQuotesController(this._repository) : super(const OverviewQuotesState());

  final QuotesRepository _repository;

  Future<void> init(
      {required int erpContractId, required OverviewSegmentPeriod segmentPeriod}) async {
    try {
      final overviewOrFailure = await _repository.getOverviewQuotes(
        erpContractId: erpContractId,
        segmentPeriod: segmentPeriod,
      );

      setStateSafe(
        () => overviewOrFailure.fold(
          (l) => state.copyWith(overview: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(overview: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(overview: AsyncError(e, StackTrace.current));
    }
  }
}
