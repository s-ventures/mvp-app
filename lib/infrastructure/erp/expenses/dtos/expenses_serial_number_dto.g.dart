// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_serial_number_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseSerialNumberDtoImpl _$$ExpenseSerialNumberDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseSerialNumberDtoImpl(
      serialNumberId: json['serialNumberId'] as int,
      erpContractId: json['erpContractId'] as int,
      type: $enumDecode(_$ExpensesTypeDtoEnumMap, json['type']),
      alias: json['alias'] as String,
      description: json['description'] as String,
      numberLast: json['numberLast'] as int,
      format: json['format'] as String,
      templateId: json['templateId'] as int,
    );

Map<String, dynamic> _$$ExpenseSerialNumberDtoImplToJson(
        _$ExpenseSerialNumberDtoImpl instance) =>
    <String, dynamic>{
      'serialNumberId': instance.serialNumberId,
      'erpContractId': instance.erpContractId,
      'type': _$ExpensesTypeDtoEnumMap[instance.type]!,
      'alias': instance.alias,
      'description': instance.description,
      'numberLast': instance.numberLast,
      'format': instance.format,
      'templateId': instance.templateId,
    };

const _$ExpensesTypeDtoEnumMap = {
  ExpensesTypeDto.quotation: 'QUOTATION',
  ExpensesTypeDto.invoice: 'INVOICE',
};
