import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/wires/periodic_orders_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/detailed_periodic_order_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/periodic_orders_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/simplified_periodic_order_dto.dart';

class PeriodicOrdersRemoteDataSource {
  PeriodicOrdersRemoteDataSource(this._restClient);

  final PeriodicOrdersRestClient _restClient;

  Future<PaginatedResponse<SimplifiedPeriodicOrderDto>>
      getSimplifiedPeriodicOrders({
    required PeriodicOrdersFilterDto filterDto,
  }) {
    try {
      return _restClient.getSimplifiedPeriodicOrders(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedPeriodicOrderDto> getDetailedPeriodicOrder({
    required int periodicOrderId,
  }) {
    try {
      return _restClient.getDetailedPeriodicOrder(
        periodicOrderId: periodicOrderId,
      );
    } catch (_) {
      rethrow;
    }
  }
}
