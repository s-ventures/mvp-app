import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
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

  factory StakeholdersFilterDto.fromDomain({
    required StakeholdersFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return StakeholdersFilterDto(
      stakeholderId: filter.stakeholderId?.toInt(),
      personTypeCode: filter.personTypeCode?.toDto(),
      fullName: filter.fullName,
      languageCodeType: filter.languageCodeType?.toDto(),
      relationType: filter.relationType?.toDto(),
      createDateFrom: filter.createDateFrom,
      createDateTo: filter.createDateTo,
      documentTypeCode: filter.documentTypeCode?.toDto(),
      documentNumber: filter.documentNumber,
      additionalInfo: filter.additionalInfo,
      favorite: filter.isFavorite,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory StakeholdersFilterDto.fromJson(Map<String, dynamic> json) =>
      _$StakeholdersFilterDtoFromJson(json);

  final int? stakeholderId;
  final PersonTypeCodeDto? personTypeCode;
  final String? fullName;
  final LanguageCodeTypeDto? languageCodeType;
  final RelationTypeDto? relationType;
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
