// [ PENDING_APPROVAL, APPROVED, ACTIVE, CLOSED, CANCELLED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum AccountStatusDto {
  pendingApproval,
  approved,
  active,
  closed,
  cancelled,
}

extension AccountStatusDtoX on AccountStatusDto {
  AccountStatus toDomain() => switch (this) {
        AccountStatusDto.pendingApproval => AccountStatus.pendingApproval,
        AccountStatusDto.approved => AccountStatus.approved,
        AccountStatusDto.active => AccountStatus.active,
        AccountStatusDto.closed => AccountStatus.closed,
        AccountStatusDto.cancelled => AccountStatus.cancelled,
      };
}
