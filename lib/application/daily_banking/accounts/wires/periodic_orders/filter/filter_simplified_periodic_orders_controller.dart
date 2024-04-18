import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_state.dart';

final filterSimplifiedPeriodicOrdersControllerProvider = StateNotifierProvider<
    FilterSimplifiedPeriodicOrdersController,
    FilterSimplifiedPeriodicOrdersState>(
  (ref) => FilterSimplifiedPeriodicOrdersController(),
);

class FilterSimplifiedPeriodicOrdersController
    extends StateNotifier<FilterSimplifiedPeriodicOrdersState> {
  FilterSimplifiedPeriodicOrdersController()
      : super(
          const FilterSimplifiedPeriodicOrdersState().copyWith(
            type: FilterSimplifiedPeriodicOrdersType.all,
          ),
        );

  void resetFilters() {
    state = const FilterSimplifiedPeriodicOrdersState();
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

  void setType(FilterSimplifiedPeriodicOrdersType? type) {
    state = state.copyWith(type: type);
  }
}
