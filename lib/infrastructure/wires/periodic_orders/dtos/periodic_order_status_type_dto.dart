// TODO(georgeta): These will be just 2 states, to be confirmed by BFMF
// [ SENT, RECEIVED, CANCELLED, PENDING, REJECTED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PeriodicOrderStatusTypeDto {
  sent,
  received,
  cancelled,
  pending,
  rejected,
}

extension PeriodicOrderStatusTypeDtoX on PeriodicOrderStatusTypeDto {
  PeriodicOrderStatusType toDomain() => switch (this) {
        PeriodicOrderStatusTypeDto.sent => PeriodicOrderStatusType.sent,
        PeriodicOrderStatusTypeDto.received => PeriodicOrderStatusType.received,
        PeriodicOrderStatusTypeDto.cancelled =>
          PeriodicOrderStatusType.cancelled,
        PeriodicOrderStatusTypeDto.pending => PeriodicOrderStatusType.pending,
        PeriodicOrderStatusTypeDto.rejected => PeriodicOrderStatusType.rejected,
      };
}
