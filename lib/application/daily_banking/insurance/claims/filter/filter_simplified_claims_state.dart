import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';

part 'filter_simplified_claims_state.freezed.dart';

@freezed
class FilterSimplifiedClaimsState with _$FilterSimplifiedClaimsState {
  const factory FilterSimplifiedClaimsState({
    List<int>? insuranceIds,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    ClaimStatusType? status,
    String? riskType,
  }) = _FilterSimplifiedClaimsState;
}
