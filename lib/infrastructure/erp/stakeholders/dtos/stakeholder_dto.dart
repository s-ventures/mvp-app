import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/extension/enum_extension.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/language_code_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/legal_stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/natural_stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/relation_type_dto.dart';

part 'stakeholder_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class StakeholderDto {
  StakeholderDto({
    required this.stakeholderId,
    required this.personTypeCode,
    required this.relationType,
    required this.fullName,
    required this.languageCodeType,
    required this.createDate,
    required this.documentTypeCode,
    required this.documentNumber,
    required this.additionalInfo,
    required this.preferenceTelephone,
    required this.preferenceSms,
    required this.preferenceMail,
    required this.preferenceWhatsapp,
    required this.isFavorite,
  });

  factory StakeholderDto.fromJson(Map<String, dynamic> json) {
    final typeString = json['personTypeCode'] as String;
    final personTypeCode =
        PersonTypeCodeDto.values.byScreamingCaseName(typeString);

    return switch (personTypeCode) {
      PersonTypeCodeDto.natural => NaturalStakeholderDto.fromJson(json),
      PersonTypeCodeDto.legal => LegalStakeholderDto.fromJson(json),
    };
  }

  final int? stakeholderId;
  final PersonTypeCodeDto personTypeCode;
  final String? fullName;
  final LanguageCodeTypeDto? languageCodeType;
  final RelationTypeDto relationType;
  @DateConverter()
  final DateTime? createDate;
  final DocumentTypeCodeDto? documentTypeCode;
  final String? documentNumber;
  final String? additionalInfo;
  final bool? preferenceTelephone;
  final bool? preferenceSms;
  final bool? preferenceMail;
  final bool? preferenceWhatsapp;
  final bool? isFavorite;

  Map<String, dynamic> toJson() => _$StakeholderDtoToJson(this);
}
