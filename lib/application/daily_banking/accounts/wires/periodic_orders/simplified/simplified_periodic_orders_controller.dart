import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/simplified/simplified_periodic_orders_state.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/repositories/periodic_orders_pagination_repository.dart';

final simplifiedPeriodicOrdersControllerProvider = StateNotifierProvider<
    SimplifiedPeriodicOrdersController, SimplifiedPeriodicOrdersState>(
  (ref) => SimplifiedPeriodicOrdersController(
    ref.watch(periodicOrdersPaginationRepositoryProvider),
  ),
);

class SimplifiedPeriodicOrdersController
    extends StateNotifier<SimplifiedPeriodicOrdersState>
    with PaginationLoadingProvider<List<SimplifiedPeriodicOrder>> {
  SimplifiedPeriodicOrdersController(
    this._repository,
  ) : super(const SimplifiedPeriodicOrdersState());

  final PeriodicOrdersPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
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

  Future<void> updateFilter({
    required double? amountFrom,
    required double? amountTo,
    required DateTime? dateFrom,
    required DateTime? dateTo,
    required PeriodicOrderFrecuencyType? frecuency,
  }) async {
    _repository.updateFilter(
      amountFrom: amountFrom,
      amountTo: amountTo,
      startDateFrom: dateFrom,
      startDateTo: dateTo,
      frecuency: frecuency,
    );
    await refresh();
  }
}
