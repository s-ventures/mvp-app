import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/natural_stakeholder.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/employment_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/gender_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/language_code_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/marital_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/matrimonial_regime_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/relation_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholder_dto.dart';

part 'natural_stakeholder_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class NaturalStakeholderDto extends StakeholderDto {
  NaturalStakeholderDto({
    required super.stakeholderId,
    required super.personTypeCode,
    required super.fullName,
    required super.languageCodeType,
    required super.relationType,
    required super.createDate,
    required super.documentTypeCode,
    required super.documentNumber,
    required super.additionalInfo,
    required super.preferenceTelephone,
    required super.preferenceMail,
    required super.preferenceSms,
    required super.preferenceWhatsapp,
    required super.isFavorite,
    required this.name,
    required this.surname1,
    required this.surname2,
    required this.birthDate,
    required this.birthCountryCode,
    required this.nationalityCountryCode,
    required this.residenceCountryCode,
    required this.residenceIndicator,
    required this.gender,
    required this.maritalStatus,
    required this.matrimonialRegime,
    required this.deathDate,
    required this.employmentStatus,
    required this.personOcuppationCode,
    required this.sector,
    required this.econimicActivityCode,
  });

  factory NaturalStakeholderDto.fromJson(Map<String, dynamic> json) =>
      _$NaturalStakeholderDtoFromJson(json);

  final String name;
  final String surname1;
  final String surname2;
  final DateTime birthDate;
  final String birthCountryCode;
  final String nationalityCountryCode;
  final String residenceCountryCode;
  final bool residenceIndicator;
  final GenderDto gender;
  final MaritalStatusDto maritalStatus;
  final MatrimonialRegimeDto matrimonialRegime;
  final DateTime deathDate;
  final EmploymentStatusDto employmentStatus;
  final String personOcuppationCode;
  final String sector;
  final String econimicActivityCode;

  @override
  Map<String, dynamic> toJson() => _$NaturalStakeholderDtoToJson(this);
}

extension NaturalStakeholderDtoX on NaturalStakeholderDto {
  NaturalStakeholder toDomain() => NaturalStakeholder(
        id: UniqueId.fromUniqueString(stakeholderId.toString()),
        personTypeCode: personTypeCode.toDomain(),
        fullName: fullName ?? '',
        additionalInfo: additionalInfo ?? '',
        // TODO(georgeta): comprobar !.
        createDate: createDate!,
        documentNumber: documentNumber ?? '',
        documentCode: documentTypeCode!.toDomain(),
        languageCode: languageCodeType!.toDomain(),
        relation: relationType.toDomain(),
        preferenceTelephone: preferenceTelephone ?? false,
        preferenceEmail: preferenceMail ?? false,
        preferenceSms: preferenceSms ?? false,
        preferenceWhatsapp: preferenceWhatsapp ?? false,
        name: name,
        isFavorite: isFavorite ?? false,
        surname1: surname1,
        surname2: surname2,
        gender: gender.toDomain(),
        maritalStatus: maritalStatus.toDomain(),
        matrimonialRegime: matrimonialRegime.toDomain(),
        employmentStatus: employmentStatus.toDomain(),
        birthDate: birthDate,
        birthCountryCode: birthCountryCode,
        nationalityCountryCode: nationalityCountryCode,
        residenceCountryCode: residenceCountryCode,
        residenceIndicator: residenceIndicator,
        deathDate: deathDate,
        personOcuppationCode: personOcuppationCode,
        sector: sector,
        econimicActivityCode: econimicActivityCode,
      );
}
