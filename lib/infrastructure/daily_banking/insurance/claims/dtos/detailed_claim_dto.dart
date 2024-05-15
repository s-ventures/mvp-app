// {
//   "claimId": 0,
//   "insuranceId": 0,
//   "year": 0,
//   "dossier": "string",
//   "createDate": "2024-04-15",
//   "status": "string",
//   "riskType": "string",
//   "reason": "string",
//   "riskLocation": "string",
//   "processStartDate": "2024-04-15",
//   "processEndDate": "2024-04-15",
//   "agentName": "string",
//   "agentEmail": "string",
//   "agentTelephone": "string"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/detailed_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/dtos/claim_status_type_dto.dart';
part 'detailed_claim_dto.freezed.dart';
part 'detailed_claim_dto.g.dart';

@freezed
class DetailedClaimDto with _$DetailedClaimDto {
  const factory DetailedClaimDto({
    required int claimId,
    required int insuranceId,
    required int year,
    required String dossier,
    required DateTime createDate,
    required ClaimStatusTypeDto status,
    required String riskType,
    required String reason,
    required String riskLocation,
    required DateTime? processStartDate,
    required DateTime? processEndDate,
    required String agentName,
    required String agentEmail,
    required String agentTelephone,
  }) = _DetailedClaimDto;

  factory DetailedClaimDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedClaimDtoFromJson(json);
}

extension DetailedClaimDtoX on DetailedClaimDto {
  DetailedClaim toDomain() {
    return DetailedClaim(
      id: UniqueId.fromUniqueString(claimId.toString()),
      insuranceId: UniqueId.fromUniqueString(insuranceId.toString()),
      year: year,
      dossier: dossier,
      createDate: createDate,
      status: status.toDomain(),
      riskType: riskType,
      reason: reason,
      riskLocation: riskLocation,
      processStartDate: processStartDate,
      processEndDate: processEndDate,
      agentName: agentName,
      agentEmail: agentEmail,
      agentTelephone: agentTelephone,
    );
  }
}
