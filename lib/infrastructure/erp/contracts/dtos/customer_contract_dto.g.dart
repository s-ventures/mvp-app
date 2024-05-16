// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerContractDtoImpl _$$CustomerContractDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerContractDtoImpl(
      alias: json['alias'] as String,
      contract: ContractDto.fromJson(json['contract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerContractDtoImplToJson(
        _$CustomerContractDtoImpl instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'contract': instance.contract.toJson(),
    };
