import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/gender.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum GenderDto {
  male,
  female,
}

extension GenderDtoX on GenderDto {
  Gender toDomain() => switch (this) {
        GenderDto.male => Gender.male,
        GenderDto.female => Gender.female,
      };
}
