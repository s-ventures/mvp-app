// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_process_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationProcessStatusDtoImpl _$$RegistrationProcessStatusDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationProcessStatusDtoImpl(
      status: $enumDecode(_$StatusDtoEnumMap, json['status']),
      product: AggregatedProductDto.fromJson(
          json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegistrationProcessStatusDtoImplToJson(
        _$RegistrationProcessStatusDtoImpl instance) =>
    <String, dynamic>{
      'status': _$StatusDtoEnumMap[instance.status]!,
      'product': instance.product.toJson(),
    };

const _$StatusDtoEnumMap = {
  StatusDto.success: 'SUCCESS',
  StatusDto.failure: 'FAILURE',
};
