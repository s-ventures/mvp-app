// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stakeholder_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakeholderDto _$StakeholderDtoFromJson(Map<String, dynamic> json) => StakeholderDto(
      stakeholderId: json['stakeholderId'] as int?,
      personTypeCode: $enumDecode(_$PersonTypeCodeDtoEnumMap, json['personTypeCode']),
      relationType: $enumDecode(_$RelationTypeDtoEnumMap, json['relationType']),
      fullName: json['fullName'] as String?,
      languageCodeType: $enumDecodeNullable(_$LanguageCodeTypeDtoEnumMap, json['languageCodeType']),
      createDate: _$JsonConverterFromJson<String, DateTime>(
          json['createDate'], const DateConverter().fromJson),
      documentTypeCode: $enumDecodeNullable(_$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      preferenceTelephone: json['preferenceTelephone'] as bool?,
      preferenceSms: json['preferenceSms'] as bool?,
      preferenceMail: json['preferenceMail'] as bool?,
      preferenceWhatsapp: json['preferenceWhatsapp'] as bool?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$StakeholderDtoToJson(StakeholderDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stakeholderId', instance.stakeholderId);
  val['personTypeCode'] = _$PersonTypeCodeDtoEnumMap[instance.personTypeCode]!;
  writeNotNull('fullName', instance.fullName);
  writeNotNull('languageCodeType', _$LanguageCodeTypeDtoEnumMap[instance.languageCodeType]);
  val['relationType'] = _$RelationTypeDtoEnumMap[instance.relationType]!;
  writeNotNull('createDate',
      _$JsonConverterToJson<String, DateTime>(instance.createDate, const DateConverter().toJson));
  writeNotNull('documentTypeCode', _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]);
  writeNotNull('documentNumber', instance.documentNumber);
  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('preferenceTelephone', instance.preferenceTelephone);
  writeNotNull('preferenceSms', instance.preferenceSms);
  writeNotNull('preferenceMail', instance.preferenceMail);
  writeNotNull('preferenceWhatsapp', instance.preferenceWhatsapp);
  writeNotNull('isFavorite', instance.isFavorite);
  return val;
}

const _$PersonTypeCodeDtoEnumMap = {
  PersonTypeCodeDto.natural: 'NATURAL',
  PersonTypeCodeDto.legal: 'LEGAL',
};

const _$RelationTypeDtoEnumMap = {
  RelationTypeDto.supplier: 'SUPPLIER',
  RelationTypeDto.customer: 'CUSTOMER',
  RelationTypeDto.both: 'BOTH',
};

const _$LanguageCodeTypeDtoEnumMap = {
  LanguageCodeTypeDto.spanish: 'SPANISH',
  LanguageCodeTypeDto.catalan: 'CATALAN',
  LanguageCodeTypeDto.basque: 'BASQUE',
  LanguageCodeTypeDto.galician: 'GALICIAN',
  LanguageCodeTypeDto.english: 'ENGLISH',
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
