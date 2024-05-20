import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/wires/sent_transfers_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/data_sources/sent_transfers_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/detailed_sent_transfer_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfers_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/simplified_sent_transfer_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockSentTransfersRestClient extends Mock
    implements SentTransfersRestClient {}

void main() {
  late SentTransfersRemoteDataSource dataSource;
  late MockSentTransfersRestClient restClient;

  final filter = SentTransfersFilterDto();

  final tSimplifiedSentTransferDto = SimplifiedSentTransferDto.fromJson(
    'daily_banking/wires/sent_transfers/simplified_sent_transfer_dto.json'
        .toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedSentTransferDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedSentTransferDto],
  );

  const tsentTransferId = 99;
  final tDetailedSentTransferDto = DetailedSentTransferDto.fromJson(
    'daily_banking/wires/sent_transfers/detailed_sent_transfer_dto.json'
        .toFixture(),
  );

  setUp(() async {
    restClient = MockSentTransfersRestClient();
    dataSource = SentTransfersRemoteDataSource(restClient);
  });

  group('getSimplifiedSentTransfers', () {
    test(
      'should perform a GET request on /wires/v1/sent-transfers/query',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedSentTransfers(
            filter: filter,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedSentTransfers(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedSentTransfers(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedSentTransferDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedSentTransfers(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result =
            await dataSource.getSimplifiedSentTransfers(filterDto: filter);

        // assert
        expect(result, equals(tPaginatedResponse));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedSentTransfers(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedSentTransfers;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  group('getDetailedSentTransfer', () {
    test(
      'should perform a GET request on /wires/v1/sent-transfers/detailed/{sentTransferId}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedSentTransfer(
            sentTransferId: tsentTransferId,
          ),
        ).thenAnswer(
          (_) async => tDetailedSentTransferDto,
        );

        // act
        await dataSource.getDetailedSentTransfer(
          sentTransferId: tsentTransferId,
        );

        // assert
        verify(
          () => restClient.getDetailedSentTransfer(
            sentTransferId: tsentTransferId,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedSentTransferDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedSentTransfer(
            sentTransferId: tsentTransferId,
          ),
        ).thenAnswer(
          (_) async => tDetailedSentTransferDto,
        );

        // act
        final result = await dataSource.getDetailedSentTransfer(
          sentTransferId: tsentTransferId,
        );

        // assert
        expect(result, equals(tDetailedSentTransferDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedSentTransfer(
            sentTransferId: tsentTransferId,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedSentTransfer;

        // assert
        expect(
          () => call(
            sentTransferId: tsentTransferId,
          ),
          throwsException,
        );
      },
    );
  });
}
