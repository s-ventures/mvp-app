import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_status_type_dto.dart';

enum PeriodicOrderStatusType {
  sent('Enviada'),
  received('Recibida'),
  cancelled('Cancelada'),
  pending('Pendiente'),
  rejected('Rechazada');

  const PeriodicOrderStatusType(this.name);

  final String name;
}

extension PeriodicOrderStatusTypeX on PeriodicOrderStatusType {
  PeriodicOrderStatusTypeDto toDto() => switch (this) {
        PeriodicOrderStatusType.sent => PeriodicOrderStatusTypeDto.sent,
        PeriodicOrderStatusType.received => PeriodicOrderStatusTypeDto.received,
        PeriodicOrderStatusType.cancelled => PeriodicOrderStatusTypeDto.cancelled,
        PeriodicOrderStatusType.pending => PeriodicOrderStatusTypeDto.pending,
        PeriodicOrderStatusType.rejected => PeriodicOrderStatusTypeDto.rejected,
      };
}
