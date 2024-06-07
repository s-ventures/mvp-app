import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_filter.dart';

part 'policies_filter.freezed.dart';

@freezed
class PoliciesFilter with _$PoliciesFilter implements IPaginationFilter {
  @Implements<IPaginationFilter>()
  const factory PoliciesFilter({
    DateTime? createDateFrom,
    DateTime? createDateTo,
  }) = _PoliciesFilter;
}
