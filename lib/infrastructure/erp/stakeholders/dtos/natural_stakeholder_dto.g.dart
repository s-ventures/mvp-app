// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'natural_stakeholder_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaturalStakeholderDto _$NaturalStakeholderDtoFromJson(
        Map<String, dynamic> json) =>
    NaturalStakeholderDto(
      stakeholderId: json['stakeholderId'] as int?,
      personTypeCode:
          $enumDecode(_$PersonTypeCodeDtoEnumMap, json['personTypeCode']),
      fullName: json['fullName'] as String?,
      languageCodeType: $enumDecodeNullable(
          _$LanguageCodeTypeDtoEnumMap, json['languageCodeType']),
      relationType: $enumDecode(_$RelationTypeDtoEnumMap, json['relationType']),
      createDate: const DateConverter().fromJson(json['createDate'] as String),
      documentTypeCode: $enumDecodeNullable(
          _$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      preferenceTelephone: json['preferenceTelephone'] as bool?,
      preferenceMail: json['preferenceMail'] as bool?,
      preferenceSms: json['preferenceSms'] as bool?,
      preferenceWhatsapp: json['preferenceWhatsapp'] as bool?,
      favorite: json['favorite'] as bool?,
      name: json['name'] as String?,
      surname1: json['surname1'] as String?,
      surname2: json['surname2'] as String?,
      birthDate: _$JsonConverterFromJson<String, DateTime>(
          json['birthDate'], const DateConverter().fromJson),
      birthCountryCode: json['birthCountryCode'] as String?,
      nationalityCountryCode: json['nationalityCountryCode'] as String?,
      residenceCountryCode: json['residenceCountryCode'] as String?,
      residenceIndicator: json['residenceIndicator'] as bool?,
      sex: $enumDecodeNullable(_$GenderDtoEnumMap, json['sex']),
      maritalStatus:
          $enumDecodeNullable(_$MaritalStatusDtoEnumMap, json['maritalStatus']),
      matrimonialRegime: $enumDecodeNullable(
          _$MatrimonialRegimeDtoEnumMap, json['matrimonialRegime']),
      deathDate: _$JsonConverterFromJson<String, DateTime>(
          json['deathDate'], const DateConverter().fromJson),
      employmentStatus: $enumDecodeNullable(
          _$EmploymentStatusDtoEnumMap, json['employmentStatus']),
      personOcuppationCode: json['personOcuppationCode'] as String?,
      sector: json['sector'] as String?,
      econimicActivityCode: json['econimicActivityCode'] as String?,
    );

Map<String, dynamic> _$NaturalStakeholderDtoToJson(
    NaturalStakeholderDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stakeholderId', instance.stakeholderId);
  val['personTypeCode'] = _$PersonTypeCodeDtoEnumMap[instance.personTypeCode]!;
  writeNotNull('fullName', instance.fullName);
  writeNotNull('languageCodeType',
      _$LanguageCodeTypeDtoEnumMap[instance.languageCodeType]);
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
  writeNotNull('name', instance.name);
  writeNotNull('surname1', instance.surname1);
  writeNotNull('surname2', instance.surname2);
  writeNotNull(
      'birthDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.birthDate, const DateConverter().toJson));
  writeNotNull('birthCountryCode', instance.birthCountryCode);
  writeNotNull('nationalityCountryCode', instance.nationalityCountryCode);
  writeNotNull('residenceCountryCode', instance.residenceCountryCode);
  writeNotNull('residenceIndicator', instance.residenceIndicator);
  writeNotNull('sex', _$GenderDtoEnumMap[instance.sex]);
  writeNotNull(
      'maritalStatus', _$MaritalStatusDtoEnumMap[instance.maritalStatus]);
  writeNotNull('matrimonialRegime',
      _$MatrimonialRegimeDtoEnumMap[instance.matrimonialRegime]);
  writeNotNull(
      'deathDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.deathDate, const DateConverter().toJson));
  writeNotNull('employmentStatus',
      _$EmploymentStatusDtoEnumMap[instance.employmentStatus]);
  writeNotNull('personOcuppationCode', instance.personOcuppationCode);
  writeNotNull('sector', instance.sector);
  writeNotNull('econimicActivityCode', instance.econimicActivityCode);
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

const _$GenderDtoEnumMap = {
  GenderDto.male: 'MALE',
  GenderDto.female: 'FEMALE',
};

const _$MaritalStatusDtoEnumMap = {
  MaritalStatusDto.single: 'SINGLE',
  MaritalStatusDto.married: 'MARRIED',
  MaritalStatusDto.divorced: 'DIVORCED',
};

const _$MatrimonialRegimeDtoEnumMap = {
  MatrimonialRegimeDto.maritalPartnership: 'MARITAL_PARTNERSHIP',
  MatrimonialRegimeDto.separationProperty: 'SEPARATION_PROPERTY',
  MatrimonialRegimeDto.participationRegime: 'PARTICIPATION_REGIME',
};

const _$EmploymentStatusDtoEnumMap = {
  EmploymentStatusDto.unEmployed: 'UN_EMPLOYED',
  EmploymentStatusDto.freelancer: 'FREELANCER',
  EmploymentStatusDto.worker: 'WORKER',
  EmploymentStatusDto.retiree: 'RETIREE',
  EmploymentStatusDto.other: 'OTHER',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
