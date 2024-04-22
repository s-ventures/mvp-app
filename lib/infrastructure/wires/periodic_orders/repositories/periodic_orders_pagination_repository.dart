import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/repositories/periodic_orders_repository.dart';

final periodicOrdersPaginationRepositoryProvider =
    Provider<PeriodicOrdersPaginationRepository>(
  (ref) => PeriodicOrdersPaginationRepository(
    ref.watch(periodicOrdersRepositoryProvider),
  ),
);

class PeriodicOrdersPaginationRepository
    extends PaginationListRepository<SimplifiedPeriodicOrder> {
  PeriodicOrdersPaginationRepository(
    this._periodicOrdersRepository,
  );
  final PeriodicOrdersRepository _periodicOrdersRepository;
  PeriodicOrdersFilter? _filter;

  @override
  Future<List<SimplifiedPeriodicOrder>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;

    final periodicOrders =
        await _periodicOrdersRepository.getSimplifiedPeriodicOrders(
      filter: filter ?? const PeriodicOrdersFilter(),
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return periodicOrders.fold(
      (l) => <SimplifiedPeriodicOrder>[],
      (r) => r,
    );
  }

  void updateFilter({
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
  }) {
    _filter = _filter?.copyWith();
  }
}
