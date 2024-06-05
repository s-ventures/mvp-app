// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serial_number_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SerialNumberDtoImpl _$$SerialNumberDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SerialNumberDtoImpl(
      serialNumberId: (json['serialNumberId'] as num).toInt(),
      erpContractId: (json['erpContractId'] as num).toInt(),
      type: $enumDecode(_$SerialNumberTypeEnumMap, json['type']),
      alias: json['alias'] as String,
      description: json['description'] as String,
      numberLast: (json['numberLast'] as num).toInt(),
      format: json['format'] as String,
      templateId: (json['templateId'] as num).toInt(),
    );

Map<String, dynamic> _$$SerialNumberDtoImplToJson(
        _$SerialNumberDtoImpl instance) =>
    <String, dynamic>{
      'serialNumberId': instance.serialNumberId,
      'erpContractId': instance.erpContractId,
      'type': _$SerialNumberTypeEnumMap[instance.type]!,
      'alias': instance.alias,
      'description': instance.description,
      'numberLast': instance.numberLast,
      'format': instance.format,
      'templateId': instance.templateId,
    };

const _$SerialNumberTypeEnumMap = {
  SerialNumberType.quotation: 'quotation',
  SerialNumberType.invoice: 'invoice',
};
