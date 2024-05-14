import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';

part 'stakeholders_filter.freezed.dart';

@freezed
class StakeholdersFilter with _$StakeholdersFilter {
  const factory StakeholdersFilter({
    UniqueId? stakeholderId,
    PersonCode? personCode,
    String? fullName,
    RelationType? relationType,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    DocumentCode? documentTypeCode,
    String? documentNumber,
    String? additionalInfo,
    bool? isFavorite,
  }) = _StakeholdersFilter;
}
