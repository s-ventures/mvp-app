import 'package:freezed_annotation/freezed_annotation.dart';

part 'policies_filter.freezed.dart';

@freezed
class PoliciesFilter with _$PoliciesFilter {
  const factory PoliciesFilter({
    DateTime? createDateFrom,
    DateTime? createDateTo,
  }) = _PoliciesFilter;
}
