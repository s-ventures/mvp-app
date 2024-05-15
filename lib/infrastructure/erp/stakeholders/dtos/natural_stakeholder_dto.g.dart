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
      createDate: _$JsonConverterFromJson<String, DateTime>(
          json['createDate'], const DateConverter().fromJson),
      documentTypeCode: $enumDecodeNullable(
          _$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String?,
      additionalInfo: json['additionalInfo'] as String?,
      preferenceTelephone: json['preferenceTelephone'] as bool?,
      preferenceMail: json['preferenceMail'] as bool?,
      preferenceSms: json['preferenceSms'] as bool?,
      preferenceWhatsapp: json['preferenceWhatsapp'] as bool?,
      isFavorite: json['isFavorite'] as bool?,
      name: json['name'] as String,
      surname1: json['surname1'] as String,
      surname2: json['surname2'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      birthCountryCode: json['birthCountryCode'] as String,
      nationalityCountryCode: json['nationalityCountryCode'] as String,
      residenceCountryCode: json['residenceCountryCode'] as String,
      residenceIndicator: json['residenceIndicator'] as bool,
      gender: $enumDecode(_$GenderDtoEnumMap, json['gender']),
      maritalStatus:
          $enumDecode(_$MaritalStatusDtoEnumMap, json['maritalStatus']),
      matrimonialRegime:
          $enumDecode(_$MatrimonialRegimeDtoEnumMap, json['matrimonialRegime']),
      deathDate: DateTime.parse(json['deathDate'] as String),
      employmentStatus:
          $enumDecode(_$EmploymentStatusDtoEnumMap, json['employmentStatus']),
      personOcuppationCode: json['personOcuppationCode'] as String,
      sector: json['sector'] as String,
      econimicActivityCode: json['econimicActivityCode'] as String,
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
  writeNotNull(
      'createDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDate, const DateConverter().toJson));
  writeNotNull('documentTypeCode',
      _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]);
  writeNotNull('documentNumber', instance.documentNumber);
  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('preferenceTelephone', instance.preferenceTelephone);
  writeNotNull('preferenceSms', instance.preferenceSms);
  writeNotNull('preferenceMail', instance.preferenceMail);
  writeNotNull('preferenceWhatsapp', instance.preferenceWhatsapp);
  writeNotNull('isFavorite', instance.isFavorite);
  val['name'] = instance.name;
  val['surname1'] = instance.surname1;
  val['surname2'] = instance.surname2;
  val['birthDate'] = instance.birthDate.toIso8601String();
  val['birthCountryCode'] = instance.birthCountryCode;
  val['nationalityCountryCode'] = instance.nationalityCountryCode;
  val['residenceCountryCode'] = instance.residenceCountryCode;
  val['residenceIndicator'] = instance.residenceIndicator;
  val['gender'] = _$GenderDtoEnumMap[instance.gender]!;
  val['maritalStatus'] = _$MaritalStatusDtoEnumMap[instance.maritalStatus]!;
  val['matrimonialRegime'] =
      _$MatrimonialRegimeDtoEnumMap[instance.matrimonialRegime]!;
  val['deathDate'] = instance.deathDate.toIso8601String();
  val['employmentStatus'] =
      _$EmploymentStatusDtoEnumMap[instance.employmentStatus]!;
  val['personOcuppationCode'] = instance.personOcuppationCode;
  val['sector'] = instance.sector;
  val['econimicActivityCode'] = instance.econimicActivityCode;
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
