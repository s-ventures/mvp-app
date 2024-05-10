import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_order_frecuency_type_dto.dart';

enum PeriodicOrderFrecuencyType {
  daily('Diariamente'),
  weekly('Semanalmente'),
  monthly('Mensualmente');

  const PeriodicOrderFrecuencyType(this.name);

  final String name;
}

extension PeriodicOrderFrecuencyTypeX on PeriodicOrderFrecuencyType {
  PeriodicOrderFrecuencyTypeDto toDto() => switch (this) {
        PeriodicOrderFrecuencyType.daily => PeriodicOrderFrecuencyTypeDto.daily,
        PeriodicOrderFrecuencyType.weekly =>
          PeriodicOrderFrecuencyTypeDto.weekly,
        PeriodicOrderFrecuencyType.monthly =>
          PeriodicOrderFrecuencyTypeDto.monthly,
      };
}
