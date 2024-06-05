import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/legal_stakeholder.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/language_code_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/legal_form_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/relation_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholder_dto.dart';

part 'legal_stakeholder_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class LegalStakeholderDto extends StakeholderDto {
  LegalStakeholderDto({
    required super.stakeholderId,
    required super.personTypeCode,
    required super.relationType,
    required super.fullName,
    required super.languageCodeType,
    required super.createDate,
    required super.documentTypeCode,
    required super.documentNumber,
    required super.additionalInfo,
    required super.preferenceTelephone,
    required super.preferenceSms,
    required super.preferenceMail,
    required super.preferenceWhatsapp,
    required super.favorite,
    required this.legalName,
    required this.comercialName,
    required this.constitutionDate,
    required this.constitutionCountryCode,
    required this.legalFormCode,
    required this.nationalityCountryCode,
    required this.economicActivityCode,
    required this.typeCode,
    required this.closureDate,
  });

  factory LegalStakeholderDto.fromJson(Map<String, dynamic> json) =>
      _$LegalStakeholderDtoFromJson(json);

  final String? legalName;
  final String? comercialName;
  @DateConverter()
  final DateTime? constitutionDate;
  final String? constitutionCountryCode;
  final LegalFormCodeDto? legalFormCode;
  final String? nationalityCountryCode;
  final String? economicActivityCode;
  final String? typeCode;
  @DateConverter()
  final DateTime? closureDate;

  @override
  Map<String, dynamic> toJson() => _$LegalStakeholderDtoToJson(this);
}

extension LegalStakeholderDtoX on LegalStakeholderDto {
  LegalStakeholder toDomain() => LegalStakeholder(
        id: UniqueId.fromUniqueString(stakeholderId.toString()),
        personTypeCode: personTypeCode.toDomain(),
        fullName: fullName ?? '',
        additionalInfo: additionalInfo ?? '',
        createDate: createDate,
        documentNumber: documentNumber ?? '',
        documentCode: documentTypeCode!.toDomain(),
        languageCode: languageCodeType!.toDomain(),
        relation: relationType.toDomain(),
        preferenceTelephone: preferenceTelephone ?? false,
        preferenceEmail: preferenceMail ?? false,
        preferenceSms: preferenceSms ?? false,
        preferenceWhatsapp: preferenceWhatsapp ?? false,
        isFavorite: favorite ?? false,
        legalName: legalName ?? '',
        comercialName: comercialName ?? '',
        constitutionDate: constitutionDate,
        constitutionCountryCode: constitutionCountryCode ?? '',
        legalFormCode: legalFormCode?.toDomain(),
        nationalityCountryCode: nationalityCountryCode ?? '',
        economicActivityCode: economicActivityCode ?? '',
        typeCode: typeCode ?? '',
        closureDate: closureDate,
      );
}
