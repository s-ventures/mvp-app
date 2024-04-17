import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/wires/periodic_orders/simplified/simplified_periodic_orders_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/repositories/periodic_orders_pagination_repository.dart';

final simplifiedClaimsControllerProvider = StateNotifierProvider<
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
    required UniqueId? id,
    required List<int>? accountIds,
    required String? beneficiaryAccount,
    required String? beneficiaryName,
    required String? beneficiaryAddress,
    required String? beneficiaryCountryCode2char,
    required double? amountFrom,
    required double? amountTo,
    required String? currencyCode,
    required DateTime? startDateFrom,
    required DateTime? startDateTo,
    required DateTime? endDateFrom,
    required DateTime? endDateTo,
    required PeriodicOrderFrecuencyType? frecuency,
    required PeriodicOrderStatusType? status,
  }) async {
    _repository.updateFilter(
      id: id,
      accountIds: accountIds,
      beneficiaryAccount: beneficiaryAccount,
      beneficiaryName: beneficiaryName,
      beneficiaryAddress: beneficiaryAddress,
      beneficiaryCountryCode2char: beneficiaryCountryCode2char,
      amountFrom: amountFrom,
      amountTo: amountTo,
      currencyCode: currencyCode,
      startDateFrom: startDateFrom,
      startDateTo: startDateTo,
      endDateFrom: endDateFrom,
      endDateTo: endDateTo,
      frecuency: frecuency,
      status: status,
    );
    await refresh();
  }
}
