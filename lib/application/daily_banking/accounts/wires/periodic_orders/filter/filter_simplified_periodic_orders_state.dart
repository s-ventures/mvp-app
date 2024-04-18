import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_periodic_orders_state.freezed.dart';

enum FilterSimplifiedPeriodicOrdersType {
  all,
  inProgress,
}

@freezed
class FilterSimplifiedPeriodicOrdersState
    with _$FilterSimplifiedPeriodicOrdersState {
  const factory FilterSimplifiedPeriodicOrdersState({
    DateTime? startDate,
    DateTime? endDate,
    RangeValues? amountRange,
    FilterSimplifiedPeriodicOrdersType? type,
  }) = _FilterSimplifiedPeriodicOrdersState;
}
