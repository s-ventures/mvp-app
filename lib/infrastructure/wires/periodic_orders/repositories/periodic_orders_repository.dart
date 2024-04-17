import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/simplified_periodic_order.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/failures/simplified_periodic_order_failure.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/repositories/i_periodic_orders_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/wires/periodic_orders_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/data_sources/periodic_orders_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/periodic_orders_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/simplified_periodic_order_dto.dart';

final periodicOrdersRepositoryProvider = Provider<PeriodicOrdersRepository>(
  (ref) => PeriodicOrdersRepository(
    remoteDataSource: PeriodicOrdersRemoteDataSource(
        ref.watch(periodicOrdersRestClientProvider)),
  ),
);

class PeriodicOrdersRepository implements IPeriodicOrdersRepository {
  PeriodicOrdersRepository({
    required PeriodicOrdersRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final PeriodicOrdersRemoteDataSource _remoteDataSource;

  @override
  Future<Either<SimplifiedPeriodicOrderFailure, List<SimplifiedPeriodicOrder>>>
      getSimplifiedPeriodicOrders({
    required PeriodicOrdersFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = PeriodicOrdersFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedPeriodicOrders(
        filterDto: filterDto,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final periodicOrders = response.data.map((e) => e.toDomain()).toList();
      return right(periodicOrders);
    } catch (_) {
      return left(const SimplifiedPeriodicOrderFailure.unexpected());
    }
  }
}
