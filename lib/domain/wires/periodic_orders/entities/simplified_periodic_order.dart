import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_status_type.dart';

part 'simplified_periodic_order.freezed.dart';

@freezed
class SimplifiedPeriodicOrder with _$SimplifiedPeriodicOrder {
  const factory SimplifiedPeriodicOrder({
    required UniqueId id,
    required UniqueId accountId,
    required UniqueId customerId,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required double amount,
    required String currencyCode,
    required PeriodicOrderStatusType? status,
    required String? concept,
    required PeriodicOrderFrecuencyType? frecuency,
    required DateTime? startDate,
  }) = _SimplifiedPeriodicOrder;
}
