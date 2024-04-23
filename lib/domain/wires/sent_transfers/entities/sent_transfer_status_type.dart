import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_status_type_dto.dart';

enum SentTransferStatusType {
  sent('Enviada'),
  received('Recibida'),
  cancelled('Cancelada'),
  pending('Pendiente'),
  rejected('Rechazada');

  const SentTransferStatusType(this.name);

  final String name;
}

extension SentTransferStatusTypeX on SentTransferStatusType {
  SentTransferStatusTypeDto toDto() => switch (this) {
        SentTransferStatusType.sent => SentTransferStatusTypeDto.sent,
        SentTransferStatusType.received => SentTransferStatusTypeDto.received,
        SentTransferStatusType.cancelled => SentTransferStatusTypeDto.cancelled,
        SentTransferStatusType.pending => SentTransferStatusTypeDto.pending,
        SentTransferStatusType.rejected => SentTransferStatusTypeDto.rejected,
      };
}
