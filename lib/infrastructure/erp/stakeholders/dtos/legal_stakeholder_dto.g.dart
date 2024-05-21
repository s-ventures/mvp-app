// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_stakeholder_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LegalStakeholderDto _$LegalStakeholderDtoFromJson(Map<String, dynamic> json) => LegalStakeholderDto(
      stakeholderId: json['stakeholderId'] as int?,
      personTypeCode: $enumDecode(_$PersonTypeCodeDtoEnumMap, json['personTypeCode']),
      relationType: $enumDecode(_$RelationTypeDtoEnumMap, json['relationType']),
      fullName: json['fullName'] as String?,
      languageCodeType: $enumDecodeNullable(_$LanguageCodeTypeDtoEnumMap, json['languageCodeType']),
      createDate: const DateConverter().fromJson(json['createDate'] as String),
      documentTypeCode: $enumDecodeNullable(_$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      preferenceTelephone: json['preferenceTelephone'] as bool?,
      preferenceSms: json['preferenceSms'] as bool?,
      preferenceMail: json['preferenceMail'] as bool?,
      preferenceWhatsapp: json['preferenceWhatsapp'] as bool?,
      favorite: json['favorite'] as bool?,
      legalName: json['legalName'] as String?,
      comercialName: json['comercialName'] as String?,
      constitutionDate: _$JsonConverterFromJson<String, DateTime>(
          json['constitutionDate'], const DateConverter().fromJson),
      constitutionCountryCode: json['constitutionCountryCode'] as String?,
      legalFormCode:
          $enumDecodeNullable(_$LegalFormCodeDtoEnumMap, json['legalFormCode']),
      nationalityCountryCode: json['nationalityCountryCode'] as String?,
      economicActivityCode: json['economicActivityCode'] as String?,
      typeCode: json['typeCode'] as String?,
      closureDate: _$JsonConverterFromJson<String, DateTime>(
          json['closureDate'], const DateConverter().fromJson),
    );

Map<String, dynamic> _$LegalStakeholderDtoToJson(LegalStakeholderDto instance) {
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
  val['createDate'] = const DateConverter().toJson(instance.createDate);
  writeNotNull('documentTypeCode',
      _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]);
  writeNotNull('documentNumber', instance.documentNumber);
  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('preferenceTelephone', instance.preferenceTelephone);
  writeNotNull('preferenceSms', instance.preferenceSms);
  writeNotNull('preferenceMail', instance.preferenceMail);
  writeNotNull('preferenceWhatsapp', instance.preferenceWhatsapp);
  writeNotNull('favorite', instance.favorite);
  writeNotNull('legalName', instance.legalName);
  writeNotNull('comercialName', instance.comercialName);
  writeNotNull(
      'constitutionDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.constitutionDate, const DateConverter().toJson));
  writeNotNull('constitutionCountryCode', instance.constitutionCountryCode);
  writeNotNull(
      'legalFormCode', _$LegalFormCodeDtoEnumMap[instance.legalFormCode]);
  writeNotNull('nationalityCountryCode', instance.nationalityCountryCode);
  writeNotNull('economicActivityCode', instance.economicActivityCode);
  writeNotNull('typeCode', instance.typeCode);
  writeNotNull(
      'closureDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.closureDate, const DateConverter().toJson));
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

const _$DocumentTypeCodeDtoEnumMap = {
  DocumentTypeCodeDto.dni: 'DNI',
  DocumentTypeCodeDto.nie: 'NIE',
  DocumentTypeCodeDto.nif: 'NIF',
  DocumentTypeCodeDto.passport: 'PASSPORT',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$LegalFormCodeDtoEnumMap = {
  LegalFormCodeDto.nonProfit: 'NON_PROFIT',
  LegalFormCodeDto.partnership: 'PARTNERSHIP',
  LegalFormCodeDto.limitedPartnership: 'LIMITED_PARTNERSHIP',
  LegalFormCodeDto.jointProperty: 'JOINT_PROPERTY',
  LegalFormCodeDto.cooperative: 'COOPERATIVE',
  LegalFormCodeDto.limitedLiabilityCompany: 'LIMITED_LIABILITY_COMPANY',
  LegalFormCodeDto.corporation: 'CORPORATION',
  LegalFormCodeDto.other: 'OTHER',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
