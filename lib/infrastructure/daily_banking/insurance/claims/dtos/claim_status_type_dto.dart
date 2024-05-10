// [ OPEN, CLOSE ] -> Still to be defined

// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ClaimStatusTypeDto {
  open,
  inProgress,
  close,
}

extension ClaimStatusTypeDtoX on ClaimStatusTypeDto {
  ClaimStatusType toDomain() => switch (this) {
        ClaimStatusTypeDto.open => ClaimStatusType.open,
        ClaimStatusTypeDto.inProgress => ClaimStatusType.inProgress,
        ClaimStatusTypeDto.close => ClaimStatusType.close,
      };
}
