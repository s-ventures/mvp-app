// [ DAILY, WEEKLY, MONTHLY ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PeriodicOrderFrecuencyTypeDto {
  daily,
  weekly,
  monthly,
}

extension PeriodicOrderFrecuencyTypeTypeDtoX on PeriodicOrderFrecuencyTypeDto {
  PeriodicOrderFrecuencyType toDomain() => switch (this) {
        PeriodicOrderFrecuencyTypeDto.daily => PeriodicOrderFrecuencyType.daily,
        PeriodicOrderFrecuencyTypeDto.weekly =>
          PeriodicOrderFrecuencyType.weekly,
        PeriodicOrderFrecuencyTypeDto.monthly =>
          PeriodicOrderFrecuencyType.monthly,
      };
}
