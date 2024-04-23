// [ SENT, RECEIVED, CANCELLED, PENDING, REJECTED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_status_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum SentTransferStatusTypeDto {
  sent,
  received,
  cancelled,
  pending,
  rejected,
}

extension SentTransferStatusTypeDtoX on SentTransferStatusTypeDto {
  SentTransferStatusType toDomain() => switch (this) {
        SentTransferStatusTypeDto.sent => SentTransferStatusType.sent,
        SentTransferStatusTypeDto.received => SentTransferStatusType.received,
        SentTransferStatusTypeDto.cancelled => SentTransferStatusType.cancelled,
        SentTransferStatusTypeDto.pending => SentTransferStatusType.pending,
        SentTransferStatusTypeDto.rejected => SentTransferStatusType.rejected,
      };
}
