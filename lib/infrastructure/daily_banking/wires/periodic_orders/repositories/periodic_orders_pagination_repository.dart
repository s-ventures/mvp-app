import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/repositories/periodic_orders_repository.dart';

final periodicOrdersPaginationRepositoryProvider = Provider<PeriodicOrdersPaginationRepository>(
  (ref) => PeriodicOrdersPaginationRepository(
    ref.watch(periodicOrdersRepositoryProvider),
  ),
);

class PeriodicOrdersPaginationRepository extends PaginationListRepository<SimplifiedPeriodicOrder> {
  PeriodicOrdersPaginationRepository(
    this._periodicOrdersRepository,
  );
  final PeriodicOrdersRepository _periodicOrdersRepository;
  PeriodicOrdersFilter? _filter;
  PeriodicOrdersFilter? get filter => _filter;

  @override
  Future<List<SimplifiedPeriodicOrder>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final periodicOrders = await _periodicOrdersRepository.getSimplifiedPeriodicOrders(
      filter: filter ?? const PeriodicOrdersFilter(),
      page: page,
      pageSize: pageSize,
    );
    return periodicOrders.fold(
      (l) => <SimplifiedPeriodicOrder>[],
      (r) => r,
    );
  }

  void updateFilter({
    required double? amountFrom,
    required double? amountTo,
    required DateTime? startDateFrom,
    required DateTime? startDateTo,
    required PeriodicOrderFrecuencyType? frecuency,
  }) {
    _filter = (_filter ?? const PeriodicOrdersFilter()).copyWith(
      amountFrom: amountFrom,
      amountTo: amountTo,
      startDateFrom: startDateFrom,
      startDateTo: startDateTo,
      frecuency: frecuency,
    );
  }
}
