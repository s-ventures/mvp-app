import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/simplified/simplified_periodic_orders_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/repositories/periodic_orders_filtered_pagination_repository.dart';

final simplifiedPeriodicOrdersControllerProvider =
    StateNotifierProvider<SimplifiedPeriodicOrdersController, SimplifiedPeriodicOrdersState>(
  (ref) => SimplifiedPeriodicOrdersController(
    ref.watch(periodicOrdersFilteredPaginationRepositoryProvider),
  ),
);

class SimplifiedPeriodicOrdersController extends StateNotifier<SimplifiedPeriodicOrdersState>
    with FilteredPaginationLoadingProvider<List<SimplifiedPeriodicOrder>, PeriodicOrdersFilter> {
  SimplifiedPeriodicOrdersController(
    this._repository,
  ) : super(const SimplifiedPeriodicOrdersState());

  final PeriodicOrdersFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      // initialFilter: const PeriodicOrdersFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            periodicOrders: const AsyncLoading<List<SimplifiedPeriodicOrder>>()
                .copyWithPrevious(state.periodicOrders),
          ),
        );
      },
      onDataLoaded: (periodicOrders) {
        setStateSafe(
          () => state.copyWith(periodicOrders: periodicOrders),
        );
      },
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          amountFrom: state.amountFrom,
          amountTo: state.amountTo,
          startDateFrom: state.startDate,
          startDateTo: state.endDate,
          frecuency: state.frecuency,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    state = const SimplifiedPeriodicOrdersState();
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
