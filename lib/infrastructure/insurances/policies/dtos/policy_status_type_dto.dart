// [ EN VIGOR, ..] -> Still to be defined by Core

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policy_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PolicyStatusTypeDto {
  active,
  closed,
  canceled,
}

extension PolicyStatusTypeDtoX on PolicyStatusTypeDto {
  PolicyStatusType toDomain() => switch (this) {
        PolicyStatusTypeDto.active => PolicyStatusType.active,
        PolicyStatusTypeDto.closed => PolicyStatusType.closed,
        PolicyStatusTypeDto.canceled => PolicyStatusType.canceled,
      };
}
