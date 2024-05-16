import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum DocumentTypeCodeDto {
  dni,
  nie,
  nif,
  passport,
}

extension DocumentTypeCodeDtoX on DocumentTypeCodeDto {
  DocumentTypeCode toDomain() => switch (this) {
        DocumentTypeCodeDto.dni => DocumentTypeCode.dni,
        DocumentTypeCodeDto.nie => DocumentTypeCode.nie,
        DocumentTypeCodeDto.nif => DocumentTypeCode.nif,
        DocumentTypeCodeDto.passport => DocumentTypeCode.passport,
      };
}
