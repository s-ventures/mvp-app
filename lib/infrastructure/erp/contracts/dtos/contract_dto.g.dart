// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractDtoImpl _$$ContractDtoImplFromJson(Map<String, dynamic> json) => _$ContractDtoImpl(
      contractId: json['contractId'] as int,
      productCode: json['productCode'] as String,
      startDate: const DateConverter().fromJson(json['startDate'] as String),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], const DateConverter().fromJson),
    );

Map<String, dynamic> _$$ContractDtoImplToJson(_$ContractDtoImpl instance) => <String, dynamic>{
      'contractId': instance.contractId,
      'productCode': instance.productCode,
      'startDate': const DateConverter().toJson(instance.startDate),
      'endDate':
          _$JsonConverterToJson<String, DateTime>(instance.endDate, const DateConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
