import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';

part 'simplified_periodic_orders_state.freezed.dart';

@freezed
class SimplifiedPeriodicOrdersState with _$SimplifiedPeriodicOrdersState {
  const factory SimplifiedPeriodicOrdersState({
    @Default(AsyncLoading<List<SimplifiedPeriodicOrder>>())
    AsyncValue<List<SimplifiedPeriodicOrder>> periodicOrders,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    PeriodicOrderFrecuencyType? frecuency,
  }) = _SimplifiedPeriodicOrderState;
}
