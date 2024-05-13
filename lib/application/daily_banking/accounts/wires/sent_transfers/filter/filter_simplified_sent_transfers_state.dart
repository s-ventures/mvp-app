import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_sent_transfers_state.freezed.dart';

enum FilterSimplifiedSentTransfersType {
  all,
  inProgress,
}

@freezed
class FilterSimplifiedSentTransfersState
    with _$FilterSimplifiedSentTransfersState {
  const factory FilterSimplifiedSentTransfersState({
    DateTime? startDate,
    DateTime? endDate,
    int? amountFrom,
    int? amountTo,
  }) = _FilterSimplifiedSentTransfersState;
}
