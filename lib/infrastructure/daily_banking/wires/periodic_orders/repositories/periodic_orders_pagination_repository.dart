import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/repositories/periodic_orders_repository.dart';

final periodicOrdersPaginationRepositoryProvider = Provider<PeriodicOrdersPaginationRepository>(
  (ref) => PeriodicOrdersPaginationRepository(
    ref.watch(periodicOrdersRepositoryProvider),
  ),
);

class PeriodicOrdersPaginationRepository
    extends FilteredPaginationListRepository<SimplifiedPeriodicOrder, PeriodicOrdersFilter> {
  PeriodicOrdersPaginationRepository(
    this._periodicOrdersRepository,
  );

  final PeriodicOrdersRepository _periodicOrdersRepository;

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
