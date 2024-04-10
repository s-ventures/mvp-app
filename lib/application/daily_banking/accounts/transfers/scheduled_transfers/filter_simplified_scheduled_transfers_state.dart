import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_scheduled_transfers_state.freezed.dart';

enum FilterSimplifiedScheduledTransfersType {
  all,
  inProgress,
}

@freezed
class FilterSimplifiedScheduledTransfersState with _$FilterSimplifiedScheduledTransfersState {
  const factory FilterSimplifiedScheduledTransfersState({
    DateTime? startDate,
    DateTime? endDate,
    RangeValues? amountRange,
    FilterSimplifiedScheduledTransfersType? type,
  }) = _FilterSimplifiedScheduledTransfersState;
}
