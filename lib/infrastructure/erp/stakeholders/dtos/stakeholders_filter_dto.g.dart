// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stakeholders_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakeholdersFilterDto _$StakeholdersFilterDtoFromJson(
        Map<String, dynamic> json) =>
    StakeholdersFilterDto(
      stakeholderId: json['stakeholderId'] as int?,
      personTypeCode: $enumDecodeNullable(
          _$PersonTypeCodeDtoEnumMap, json['personTypeCode']),
      fullName: json['fullName'] as String?,
      languageCodeType: $enumDecodeNullable(
          _$LanguageCodeTypeDtoEnumMap, json['languageCodeType']),
      relationType:
          $enumDecodeNullable(_$RelationTypeDtoEnumMap, json['relationType']),
      createDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['createDateFrom'], const DateConverter().fromJson),
      createDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['createDateTo'], const DateConverter().fromJson),
      documentTypeCode: $enumDecodeNullable(
          _$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      favorite: json['favorite'] as bool?,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$StakeholdersFilterDtoToJson(
    StakeholdersFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stakeholderId', instance.stakeholderId);
  writeNotNull(
      'personTypeCode', _$PersonTypeCodeDtoEnumMap[instance.personTypeCode]);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('languageCodeType',
      _$LanguageCodeTypeDtoEnumMap[instance.languageCodeType]);
  writeNotNull('relationType', _$RelationTypeDtoEnumMap[instance.relationType]);
  writeNotNull(
      'createDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateFrom, const DateConverter().toJson));
  writeNotNull(
      'createDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateTo, const DateConverter().toJson));
  writeNotNull('documentTypeCode',
      _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]);
  writeNotNull('documentNumber', instance.documentNumber);
  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('favorite', instance.favorite);
  return val;
}

const _$PersonTypeCodeDtoEnumMap = {
  PersonTypeCodeDto.natural: 'NATURAL',
  PersonTypeCodeDto.legal: 'LEGAL',
};

const _$LanguageCodeTypeDtoEnumMap = {
  LanguageCodeTypeDto.spanish: 'SPANISH',
  LanguageCodeTypeDto.catalan: 'CATALAN',
  LanguageCodeTypeDto.basque: 'BASQUE',
  LanguageCodeTypeDto.galician: 'GALICIAN',
  LanguageCodeTypeDto.english: 'ENGLISH',
};

const _$RelationTypeDtoEnumMap = {
  RelationTypeDto.supplier: 'SUPPLIER',
  RelationTypeDto.customer: 'CUSTOMER',
  RelationTypeDto.both: 'BOTH',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$DocumentTypeCodeDtoEnumMap = {
  DocumentTypeCodeDto.dni: 'DNI',
  DocumentTypeCodeDto.nie: 'NIE',
  DocumentTypeCodeDto.nif: 'NIF',
  DocumentTypeCodeDto.passport: 'PASSPORT',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
