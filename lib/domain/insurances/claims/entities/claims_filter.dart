import 'package:freezed_annotation/freezed_annotation.dart';

part 'claims_filter.freezed.dart';

@freezed
class ClaimsFilter with _$ClaimsFilter {
  const factory ClaimsFilter({
    int? claimId,
    List<int>? insuranceIds,
    int? year,
    String? dossier,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    String? status,
    String? riskType,
    String? reason,
    String? riskLocation,
    DateTime? processStartDateFrom,
    DateTime? processStartDateTo,
    DateTime? processEndDateFrom,
    DateTime? processEndDateTo,
    String? agentName,
    String? agentEmail,
    String? agentTelephone,
  }) = _ClaimsFilter;
}
