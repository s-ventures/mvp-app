import 'package:json_annotation/json_annotation.dart';
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
    required super.isFavorite,
    required this.legalName,
  });

  factory LegalStakeholderDto.fromJson(Map<String, dynamic> json) =>
      _$LegalStakeholderDtoFromJson(json);

  final String legalName;

  @override
  Map<String, dynamic> toJson() => _$LegalStakeholderDtoToJson(this);
}
