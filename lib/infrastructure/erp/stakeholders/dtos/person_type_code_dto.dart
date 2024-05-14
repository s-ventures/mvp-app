import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PersonTypeCodeDto {
  natural,
  legal,
}

extension PersonTypeCodeDtoX on PersonTypeCodeDto {
  PersonTypeCode toDomain() => switch (this) {
        PersonTypeCodeDto.natural => PersonTypeCode.natural,
        PersonTypeCodeDto.legal => PersonTypeCode.legal,
      };
}
