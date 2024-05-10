// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractDtoImpl _$$ContractDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContractDtoImpl(
      contractId: json['contractId'] as int,
      productCode: json['productCode'] as String,
      startDate: const DateConverter().fromJson(json['startDate'] as String),
      endDate: const DateConverter().fromJson(json['endDate'] as String),
    );

Map<String, dynamic> _$$ContractDtoImplToJson(_$ContractDtoImpl instance) =>
    <String, dynamic>{
      'contractId': instance.contractId,
      'productCode': instance.productCode,
      'startDate': const DateConverter().toJson(instance.startDate),
      'endDate': const DateConverter().toJson(instance.endDate),
    };
