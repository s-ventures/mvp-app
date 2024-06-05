// [ SENT, RECEIVED, CANCELLED, PENDING, REJECTED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transfer_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum TransferStatusTypeDto {
  sent,
  received,
  cancelled,
  pending,
  rejected,
}

extension TransferStatusTypeDtoX on TransferStatusTypeDto {
  TransferStatusType toDomain() => switch (this) {
        TransferStatusTypeDto.sent => TransferStatusType.sent,
        TransferStatusTypeDto.received => TransferStatusType.received,
        TransferStatusTypeDto.cancelled => TransferStatusType.cancelled,
        TransferStatusTypeDto.pending => TransferStatusType.pending,
        TransferStatusTypeDto.rejected => TransferStatusType.rejected,
      };
}
