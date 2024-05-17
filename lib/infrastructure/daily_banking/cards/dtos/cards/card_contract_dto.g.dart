// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardContractDtoImpl _$$CardContractDtoImplFromJson(Map<String, dynamic> json) =>
    _$CardContractDtoImpl(
      cardContractId: json['cardContractId'] as int,
      accountId: json['accountId'] as int,
      createDate: const DateConverter().fromJson(json['createDate'] as String),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], const DateConverter().fromJson),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$CardContractDtoImplToJson(_$CardContractDtoImpl instance) =>
    <String, dynamic>{
      'cardContractId': instance.cardContractId,
      'accountId': instance.accountId,
      'createDate': const DateConverter().toJson(instance.createDate),
      'endDate':
          _$JsonConverterToJson<String, DateTime>(instance.endDate, const DateConverter().toJson),
      'currencyCode': instance.currencyCode,
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
