import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/filter/filter_simplified_sent_transfers_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/sent_transfers/simplified/simplified_sent_transfers_controller.dart';

final filterSimplifiedSentTransfersControllerProvider =
    StateNotifierProvider.autoDispose<FilterSimplifiedSentTransfersController,
        FilterSimplifiedSentTransfersState>(
  (ref) => FilterSimplifiedSentTransfersController(
    ref.read(simplifiedSentTransfersControllerProvider.notifier),
  ),
);

class FilterSimplifiedSentTransfersController
    extends StateNotifier<FilterSimplifiedSentTransfersState> {
  FilterSimplifiedSentTransfersController(
    this._simplifiedSentTransfersController,
  ) : super(const FilterSimplifiedSentTransfersState());

  final SimplifiedSentTransfersController _simplifiedSentTransfersController;

  Future<void> applyFilters() async {
    await _simplifiedSentTransfersController.updateFilter(
      amountFrom: state.amountFrom,
      amountTo: state.amountTo,
      dateFrom: state.startDate,
      dateTo: state.endDate,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedSentTransfersState();
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(startDate: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(endDate: endDate);
  }

  void setAmountFrom(int? amountFrom) {
    state = state.copyWith(amountFrom: amountFrom);
  }

  void setAmountTo(int? amountTo) {
    state = state.copyWith(amountTo: amountTo);
  }
}
