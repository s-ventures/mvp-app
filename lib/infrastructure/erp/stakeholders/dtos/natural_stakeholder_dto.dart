import 'package:json_annotation/json_annotation.dart';
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
  });

  factory NaturalStakeholderDto.fromJson(Map<String, dynamic> json) =>
      _$NaturalStakeholderDtoFromJson(json);

  final String name;

  @override
  Map<String, dynamic> toJson() => _$NaturalStakeholderDtoToJson(this);
}
