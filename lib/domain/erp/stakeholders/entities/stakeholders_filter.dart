import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'stakeholders_filter.freezed.dart';

@freezed
class StakeholdersFilter with _$StakeholdersFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory StakeholdersFilter({
    UniqueId? stakeholderId,
    PersonTypeCode? personTypeCode,
    String? fullName,
    LanguageCodeType? languageCodeType,
    RelationType? relationType,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    DocumentTypeCode? documentTypeCode,
    String? documentNumber,
    String? additionalInfo,
    bool? isFavorite,
  }) = _StakeholdersFilter;
}
