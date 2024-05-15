import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/person_type_code_dto.dart';

enum PersonTypeCode {
  natural,
  legal,
}

extension PersonTypeCodeX on PersonTypeCode? {
  PersonTypeCodeDto? toDto() => switch (this) {
        PersonTypeCode.natural => PersonTypeCodeDto.natural,
        PersonTypeCode.legal => PersonTypeCodeDto.legal,
        null => null,
      };
}
