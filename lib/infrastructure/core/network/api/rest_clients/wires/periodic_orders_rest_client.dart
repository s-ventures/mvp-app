import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/detailed_periodic_order_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/periodic_orders_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/simplified_periodic_order_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'periodic_orders_rest_client.g.dart';

final periodicOrdersRestClientProvider = Provider<PeriodicOrdersRestClient>(
  (ref) => PeriodicOrdersRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class PeriodicOrdersRestClient {
  factory PeriodicOrdersRestClient(Dio dio) = _PeriodicOrdersRestClient;

  @GET('/wires/v1/periodic-orders/query')
  Future<PaginatedResponse<SimplifiedPeriodicOrderDto>>
      getSimplifiedPeriodicOrders({
    @Query('') required PeriodicOrdersFilterDto filter,
  });

  @GET('/wires/v1/periodic-orders/detailed/{periodicOrderId}')
  Future<DetailedPeriodicOrderDto> getDetailedPeriodicOrder({
    @Path('periodicOrderId') required int periodicOrderId,
  });
}
