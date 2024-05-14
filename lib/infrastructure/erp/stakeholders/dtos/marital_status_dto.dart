import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/marital_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum MaritalStatusDto {
  single,
  married,
  divorced,
}

extension MaritalStatusDtoX on MaritalStatusDto {
  MaritalStatus toDomain() => switch (this) {
        MaritalStatusDto.single => MaritalStatus.single,
        MaritalStatusDto.married => MaritalStatus.married,
        MaritalStatusDto.divorced => MaritalStatus.divorced,
      };
}
