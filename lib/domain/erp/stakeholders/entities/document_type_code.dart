import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';

enum DocumentTypeCode {
  dni,
  nie,
  nif,
  passport,
}

extension DocumentTypeCodeX on DocumentTypeCode? {
  DocumentTypeCodeDto? toDto() => switch (this) {
        null => null,
        DocumentTypeCode.dni => DocumentTypeCodeDto.dni,
        DocumentTypeCode.nie => DocumentTypeCodeDto.nie,
        DocumentTypeCode.nif => DocumentTypeCodeDto.nif,
        DocumentTypeCode.passport => DocumentTypeCodeDto.passport,
      };
}
