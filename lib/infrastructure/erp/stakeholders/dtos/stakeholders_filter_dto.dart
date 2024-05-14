import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/language_code_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/relation_type_dto.dart';

part 'stakeholders_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class StakeholdersFilterDto extends PaginatedRequest {
  StakeholdersFilterDto({
    required this.stakeholderId,
    required this.personTypeCode,
    required this.fullName,
    required this.languageCodeType,
    required this.relationType,
    required this.createDateFrom,
    required this.createDateTo,
    required this.documentTypeCode,
    required this.documentNumber,
    required this.additionalInfo,
    required this.favorite,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory StakeholdersFilterDto.fromJson(Map<String, dynamic> json) =>
      _$StakeholdersFilterDtoFromJson(json);

  final int? stakeholderId;
  final PersonTypeCodeDto? personTypeCode;
  final String? fullName;
  final LanguageCodeTypeDto? languageCodeType;
  final RelationTypeDto relationType;
  @DateConverter()
  final DateTime? createDateFrom;
  @DateConverter()
  final DateTime? createDateTo;
  final DocumentTypeCodeDto? documentTypeCode;
  final String? documentNumber;
  final String? additionalInfo;
  final bool? favorite;

  @override
  Map<String, dynamic> toJson() => _$StakeholdersFilterDtoToJson(this);
}
