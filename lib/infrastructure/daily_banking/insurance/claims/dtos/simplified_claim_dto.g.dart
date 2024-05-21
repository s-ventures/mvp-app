// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_claim_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedClaimDtoImpl _$$SimplifiedClaimDtoImplFromJson(Map<String, dynamic> json) =>
    _$SimplifiedClaimDtoImpl(
      claimId: json['claimId'] as int,
      insuranceId: json['insuranceId'] as int,
      status: $enumDecode(_$ClaimStatusTypeDtoEnumMap, json['status']),
      riskType: json['riskType'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$SimplifiedClaimDtoImplToJson(_$SimplifiedClaimDtoImpl instance) =>
    <String, dynamic>{
      'claimId': instance.claimId,
      'insuranceId': instance.insuranceId,
      'status': _$ClaimStatusTypeDtoEnumMap[instance.status]!,
      'riskType': instance.riskType,
      'reason': instance.reason,
    };

const _$ClaimStatusTypeDtoEnumMap = {
  ClaimStatusTypeDto.open: 'OPEN',
  ClaimStatusTypeDto.inProgress: 'IN_PROGRESS',
  ClaimStatusTypeDto.close: 'CLOSE',
};
