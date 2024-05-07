import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/detailed_periodic_order.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/failures/detailed_periodic_order_failure.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/failures/simplified_periodic_order_failure.dart';

// ignore: one_member_abstracts
abstract class IPeriodicOrdersRepository {
  Future<Either<SimplifiedPeriodicOrderFailure, List<SimplifiedPeriodicOrder>>>
      getSimplifiedPeriodicOrders({
    required PeriodicOrdersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedPeriodicOrderFailure, DetailedPeriodicOrder>>
      getDetailedPeriodicOrder({
    required int periodicOrderId,
  });
}
