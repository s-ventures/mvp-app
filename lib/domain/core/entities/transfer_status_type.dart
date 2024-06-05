import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_status_type_dto.dart';

enum TransferStatusType {
  sent('Enviada'),
  received('Recibida'),
  cancelled('Cancelada'),
  pending('Pendiente'),
  rejected('Rechazada');

  const TransferStatusType(this.name);

  final String name;
}

extension TransferStatusTypeX on TransferStatusType {
  TransferStatusTypeDto toDto() => switch (this) {
        TransferStatusType.sent => TransferStatusTypeDto.sent,
        TransferStatusType.received => TransferStatusTypeDto.received,
        TransferStatusType.cancelled => TransferStatusTypeDto.cancelled,
        TransferStatusType.pending => TransferStatusTypeDto.pending,
        TransferStatusType.rejected => TransferStatusTypeDto.rejected,
      };
}
