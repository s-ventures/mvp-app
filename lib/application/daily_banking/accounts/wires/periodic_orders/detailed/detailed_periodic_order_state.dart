import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/detailed_periodic_order.dart';

part 'detailed_periodic_order_state.freezed.dart';

@freezed
class DetailedPeriodicOrderState with _$DetailedPeriodicOrderState {
  const factory DetailedPeriodicOrderState({
    @Default(AsyncLoading<DetailedPeriodicOrder>())
    AsyncValue<DetailedPeriodicOrder> periodicOrder,
  }) = _DetailedPeriodicOrderState;
}
