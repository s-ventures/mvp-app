import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_policies_state.freezed.dart';

@freezed
class FilterSimplifiedPoliciesState with _$FilterSimplifiedPoliciesState {
  const factory FilterSimplifiedPoliciesState({
    DateTime? createDateFrom,
    DateTime? createDateTo,
  }) = _FilterSimplifiedPoliciesState;
}
