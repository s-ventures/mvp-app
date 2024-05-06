import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/simplified/simplified_periodic_orders_controller.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';

final filterSimplifiedPeriodicOrdersControllerProvider =
    StateNotifierProvider.autoDispose<FilterSimplifiedPeriodicOrdersController,
        FilterSimplifiedPeriodicOrdersState>(
  (ref) => FilterSimplifiedPeriodicOrdersController(
    ref.read(simplifiedPeriodicOrdersControllerProvider.notifier),
  ),
);

class FilterSimplifiedPeriodicOrdersController
    extends StateNotifier<FilterSimplifiedPeriodicOrdersState> {
  FilterSimplifiedPeriodicOrdersController(
    this._simplifiedPeriodicOrdersController,
  ) : super(const FilterSimplifiedPeriodicOrdersState());

  final SimplifiedPeriodicOrdersController _simplifiedPeriodicOrdersController;

  Future<void> applyFilters() async {
    await _simplifiedPeriodicOrdersController.updateFilter(
      amountFrom: state.amountFrom,
      amountTo: state.amountTo,
      dateFrom: state.startDate,
      dateTo: state.endDate,
      frecuency: state.frecuency,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedPeriodicOrdersState();
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(startDate: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(endDate: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(amountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(amountTo: amountTo);
  }

  void setFrecuencyTo(PeriodicOrderFrecuencyType? frecuency) {
    state = state.copyWith(frecuency: frecuency);
  }
}
