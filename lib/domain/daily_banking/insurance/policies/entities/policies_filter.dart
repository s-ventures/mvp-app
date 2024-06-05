import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'policies_filter.freezed.dart';

@freezed
class PoliciesFilter with _$PoliciesFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory PoliciesFilter({
    DateTime? createDateFrom,
    DateTime? createDateTo,
  }) = _PoliciesFilter;
}
