import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_claims_state.freezed.dart';

@freezed
class FilterSimplifiedClaimsState with _$FilterSimplifiedClaimsState {
  const factory FilterSimplifiedClaimsState({
    int? claimId,
    List<int>? insuranceIds,
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
  }) = _FilterSimplifiedClaimsState;
}
