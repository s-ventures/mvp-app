import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';

part 'simplified_claim.freezed.dart';

@freezed
class SimplifiedClaim with _$SimplifiedClaim {
  const factory SimplifiedClaim({
    required UniqueId id,
    required UniqueId insuranceId,
    required ClaimStatusType status,
    required String riskType,
    required String reason,
  }) = _SimplifiedClaim;
}
