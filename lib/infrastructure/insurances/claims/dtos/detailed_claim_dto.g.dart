// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_claim_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedClaimDtoImpl _$$DetailedClaimDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedClaimDtoImpl(
      claimId: json['claimId'] as int,
      insuranceId: json['insuranceId'] as int,
      year: json['year'] as int,
      dossier: json['dossier'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      status: json['status'] as String,
      riskType: json['riskType'] as String,
      reason: json['reason'] as String,
      riskLocation: json['riskLocation'] as String,
      processStartDate: DateTime.parse(json['processStartDate'] as String),
      processEndDate: DateTime.parse(json['processEndDate'] as String),
      agentName: json['agentName'] as String,
      agentEmail: json['agentEmail'] as String,
      agentTelephone: json['agentTelephone'] as String,
    );

Map<String, dynamic> _$$DetailedClaimDtoImplToJson(
        _$DetailedClaimDtoImpl instance) =>
    <String, dynamic>{
      'claimId': instance.claimId,
      'insuranceId': instance.insuranceId,
      'year': instance.year,
      'dossier': instance.dossier,
      'createDate': instance.createDate.toIso8601String(),
      'status': instance.status,
      'riskType': instance.riskType,
      'reason': instance.reason,
      'riskLocation': instance.riskLocation,
      'processStartDate': instance.processStartDate.toIso8601String(),
      'processEndDate': instance.processEndDate.toIso8601String(),
      'agentName': instance.agentName,
      'agentEmail': instance.agentEmail,
      'agentTelephone': instance.agentTelephone,
    };
