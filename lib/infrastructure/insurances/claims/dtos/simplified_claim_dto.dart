// {
//       "claimId": 0,
//       "insuranceId": 0,
//       "status": "string",
//       "riskType": "string",
//       "reason": "string"
//     }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';

part 'simplified_claim_dto.freezed.dart';
part 'simplified_claim_dto.g.dart';

@freezed
class SimplifiedClaimDto with _$SimplifiedClaimDto {
  const factory SimplifiedClaimDto({
    required int claimId,
    required int insuranceId,
    required String status,
    required String riskType,
    required String reason,
  }) = _SimplifiedClaimDto;

  factory SimplifiedClaimDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedClaimDtoFromJson(json);
}

extension SimplifiedClaimDtoX on SimplifiedClaimDto {
  SimplifiedClaim toDomain() {
    return SimplifiedClaim(
      id: UniqueId.fromUniqueString(claimId.toString()),
      insuranceId: insuranceId,
      status: ClaimStatusType.fromString(status),
      riskType: riskType,
      reason: reason,
    );
  }
}
