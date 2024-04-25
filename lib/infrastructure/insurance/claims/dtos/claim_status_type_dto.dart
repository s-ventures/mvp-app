// [ OPEN, CLOSE ] -> Still to be defined

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claim_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ClaimStatusTypeDto {
  open,
  close,
}

extension ClaimStatusTypeDtoX on ClaimStatusTypeDto {
  ClaimStatusType toDomain() => switch (this) {
        ClaimStatusTypeDto.open => ClaimStatusType.open,
        ClaimStatusTypeDto.close => ClaimStatusType.close,
      };
}
