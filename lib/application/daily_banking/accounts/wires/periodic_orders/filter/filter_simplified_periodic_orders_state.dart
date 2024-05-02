import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';

part 'filter_simplified_periodic_orders_state.freezed.dart';

enum FilterSimplifiedPeriodicOrdersType {
  all,
  inProgress,
}

@freezed
class FilterSimplifiedPeriodicOrdersState
    with _$FilterSimplifiedPeriodicOrdersState {
  const factory FilterSimplifiedPeriodicOrdersState({
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    PeriodicOrderFrecuencyType? frecuency,
  }) = _FilterSimplifiedPeriodicOrdersState;
}
