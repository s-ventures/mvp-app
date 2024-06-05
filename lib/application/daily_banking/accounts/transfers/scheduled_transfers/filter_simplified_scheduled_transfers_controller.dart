import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transfers/scheduled_transfers/filter_simplified_scheduled_transfers_state.dart';

final filterSimplifiedScheduledTransfersControllerProvider =
    StateNotifierProvider<FilterSimplifiedScheduledTransfersController, FilterSimplifiedScheduledTransfersState>(
  (ref) => FilterSimplifiedScheduledTransfersController(),
);

class FilterSimplifiedScheduledTransfersController extends StateNotifier<FilterSimplifiedScheduledTransfersState> {
  FilterSimplifiedScheduledTransfersController()
      : super(
          const FilterSimplifiedScheduledTransfersState().copyWith(
            type: FilterSimplifiedScheduledTransfersType.all,
          ),
        );

  void resetFilters() {
    state = const FilterSimplifiedScheduledTransfersState();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(startDate: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(endDate: endDate);
  }

  void setAmountRange(RangeValues? range) {
    state = state.copyWith(amountRange: range);
  }

  void setType(FilterSimplifiedScheduledTransfersType? type) {
    state = state.copyWith(type: type);
  }
}
