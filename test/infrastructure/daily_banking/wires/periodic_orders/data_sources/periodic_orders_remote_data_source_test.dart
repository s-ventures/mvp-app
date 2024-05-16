import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/wires/periodic_orders_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/data_sources/periodic_orders_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/detailed_periodic_order_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/periodic_orders_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/periodic_orders/dtos/simplified_periodic_order_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockPeriodicOrdersRestClient extends Mock
    implements PeriodicOrdersRestClient {}

void main() {
  late PeriodicOrdersRemoteDataSource dataSource;
  late MockPeriodicOrdersRestClient restClient;

  final filter = PeriodicOrdersFilterDto();

  final tSimplifiedPeriodicOrderDto = SimplifiedPeriodicOrderDto.fromJson(
    'daily_banking/wires/periodic_orders/simplified_periodic_order_dto.json'
        .toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedPeriodicOrderDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedPeriodicOrderDto],
  );

  const tPeriodicOrderId = 15;
  final tDetailedPeriodicOrderDto = DetailedPeriodicOrderDto.fromJson(
    'daily_banking/wires/periodic_orders/detailed_periodic_order_dto.json'
        .toFixture(),
  );

  setUp(() async {
    restClient = MockPeriodicOrdersRestClient();
    dataSource = PeriodicOrdersRemoteDataSource(restClient);
  });

  group('getSimplifiedPeriodicOrders', () {
    test(
      'should perform a GET request on /wires/v1/periodic-orders/query',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPeriodicOrders(
            filter: filter,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedPeriodicOrders(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedPeriodicOrders(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedPeriodicOrderDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPeriodicOrders(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result =
            await dataSource.getSimplifiedPeriodicOrders(filterDto: filter);

        // assert
        expect(result, equals(tPaginatedResponse));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPeriodicOrders(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedPeriodicOrders;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  group('getDetailedPeriodicOrder', () {
    test(
      'should perform a GET request on /wires/v1/periodic-orders/detailed/{periodicOrderId}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPeriodicOrder(
            periodicOrderId: tPeriodicOrderId,
          ),
        ).thenAnswer(
          (_) async => tDetailedPeriodicOrderDto,
        );

        // act
        await dataSource.getDetailedPeriodicOrder(
          periodicOrderId: tPeriodicOrderId,
        );

        // assert
        verify(
          () => restClient.getDetailedPeriodicOrder(
            periodicOrderId: tPeriodicOrderId,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedPeriodicOrderDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPeriodicOrder(
            periodicOrderId: tPeriodicOrderId,
          ),
        ).thenAnswer(
          (_) async => tDetailedPeriodicOrderDto,
        );

        // act
        final result = await dataSource.getDetailedPeriodicOrder(
          periodicOrderId: tPeriodicOrderId,
        );

        // assert
        expect(result, equals(tDetailedPeriodicOrderDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPeriodicOrder(
            periodicOrderId: tPeriodicOrderId,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedPeriodicOrder;

        // assert
        expect(
          () => call(periodicOrderId: tPeriodicOrderId),
          throwsException,
        );
      },
    );
  });
}
