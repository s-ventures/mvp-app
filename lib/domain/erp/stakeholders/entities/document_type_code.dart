import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';

enum DocumentTypeCode {
  dni('DNI'),
  nie('NIE'),
  nif('NIF'),
  passport('Pasaporte');

  const DocumentTypeCode(this.name);

  final String name;
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
