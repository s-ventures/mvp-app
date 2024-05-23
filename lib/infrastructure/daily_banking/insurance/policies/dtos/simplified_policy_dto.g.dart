// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedPolicyDtoImpl _$$SimplifiedPolicyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedPolicyDtoImpl(
      insuranceId: json['insuranceId'] as int,
      policy: json['policy'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SimplifiedPolicyDtoImplToJson(
        _$SimplifiedPolicyDtoImpl instance) =>
    <String, dynamic>{
      'insuranceId': instance.insuranceId,
      'policy': instance.policy,
      'status': instance.status,
      'description': instance.description,
    };
