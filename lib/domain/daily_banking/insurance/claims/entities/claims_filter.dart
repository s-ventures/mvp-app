import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';

part 'claims_filter.freezed.dart';

@freezed
class ClaimsFilter with _$ClaimsFilter {
  const factory ClaimsFilter({
    List<int>? insuranceIds,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    ClaimStatusType? status,
    String? riskType,
  }) = _ClaimsFilter;
}
