import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/repositories/i_periodic_orders_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/repositories/periodic_orders_repository.dart';

final periodicOrdersFilteredPaginationRepositoryProvider =
    Provider<IFilteredPaginationListRepository<SimplifiedPeriodicOrder, PeriodicOrdersFilter>>(
  (ref) => PeriodicOrdersFilteredPaginationRepository(
    ref.watch(periodicOrdersRepositoryProvider),
  ),
);

class PeriodicOrdersFilteredPaginationRepository
    extends IFilteredPaginationListRepository<SimplifiedPeriodicOrder, PeriodicOrdersFilter> {
  PeriodicOrdersFilteredPaginationRepository(
    this._periodicOrdersRepository,
  );

  final IPeriodicOrdersRepository _periodicOrdersRepository;

  @override
  Future<List<SimplifiedPeriodicOrder>> fetchPage({
    required int page,
    required int pageSize,
    PeriodicOrdersFilter? filter,
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
}
