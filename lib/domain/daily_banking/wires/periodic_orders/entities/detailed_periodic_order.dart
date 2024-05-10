import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_status_type.dart';

part 'detailed_periodic_order.freezed.dart';

@freezed
class DetailedPeriodicOrder with _$DetailedPeriodicOrder {
  const factory DetailedPeriodicOrder({
    required UniqueId id,
    required UniqueId accountId,
    required UniqueId customerId,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required String? beneficiaryAddress,
    required String beneficiaryCountryCode2char,
    required double amount,
    required String currencyCode,
    required DateTime startDate,
    required DateTime? endDate,
    required PeriodicOrderFrecuencyType frecuency,
    required PeriodicOrderStatusType status,
    required String baasTransferId,
    required String? concept,
  }) = _DetailedPeriodicOrder;
}
