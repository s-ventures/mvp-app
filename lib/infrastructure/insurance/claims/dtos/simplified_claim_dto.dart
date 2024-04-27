// {
//       "claimId": 0,
//       "insuranceId": 0,
//       "status": "string",
//       "riskType": "string",
//       "reason": "string"
//     }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/claim_status_type_dto.dart';
part 'simplified_claim_dto.freezed.dart';
part 'simplified_claim_dto.g.dart';

@freezed
class SimplifiedClaimDto with _$SimplifiedClaimDto {
  const factory SimplifiedClaimDto({
    required int claimId,
    required int insuranceId,
    required ClaimStatusTypeDto status,
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
      insuranceId: UniqueId.fromUniqueString(insuranceId.toString()),
      status: status.toDomain(),
      riskType: riskType,
      reason: reason,
    );
  }
}
