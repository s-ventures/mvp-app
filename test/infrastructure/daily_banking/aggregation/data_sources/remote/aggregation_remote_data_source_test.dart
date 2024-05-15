import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/aggregation/aggregation_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/data_sources/remote/aggregation_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/registration_process_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/aggregation/dtos/tink_flow_link_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockAggregationRestClient extends Mock implements AggregationRestClient {}

void main() {
  late AggregationRemoteDataSource dataSource;
  late MockAggregationRestClient restClient;

  final tTinkFlowLinkDto = TinkFlowLinkDto.fromJson(
    'daily_banking/aggregation/tink_flow_link_dto.json'.toFixture(),
  );
  const tCredentialsId = '1';
  final tResponse = [
    RegistrationProcessStatusDto.fromJson(
      'daily_banking/aggregation/registration_process_status_dto.json'
          .toFixture(),
    ),
  ];

  setUp(() {
    restClient = MockAggregationRestClient();
    dataSource = AggregationRemoteDataSource(restClient);
  });

  group('getAggregationServiceUrl', () {
    test(
      'should perform a GET request on /aggregation/v1/aggregation/get-link',
      () async {
        // arrange
        when(() => restClient.getAggregationServiceUrl())
            .thenAnswer((_) async => tTinkFlowLinkDto);

        // act
        await dataSource.getAggregationServiceUrl();

        // assert
        verify(() => restClient.getAggregationServiceUrl());
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a fullLink when the response code is 200 (success)',
      () async {
        // arrange
        when(() => restClient.getAggregationServiceUrl())
            .thenAnswer((_) async => tTinkFlowLinkDto);

        // act
        final result = await dataSource.getAggregationServiceUrl();

        // assert
        expect(result, equals(tTinkFlowLinkDto.fullLink));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(() => restClient.getAggregationServiceUrl()).thenThrow(
          DioException(
            requestOptions: RequestOptions(),
          ),
        );

        // act
        final call = dataSource.getAggregationServiceUrl;

        // assert
        expect(call, throwsException);
      },
    );
  });

  group('registerCredential', () {
    test(
      'should perform a POST request on /aggregation/v1/aggregation/register/{credentialsId}',
      () async {
        // arrange
        when(
          () => restClient.registerCredentials(
            credentialsId: tCredentialsId,
          ),
        ).thenAnswer(
          (_) async => tResponse,
        );

        // act
        await dataSource.registerCredentials(tCredentialsId);

        // assert
        verify(
          () => restClient.registerCredentials(credentialsId: tCredentialsId),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return TRUE when all the status in the response are success',
      () async {
        // arrange
        when(
          () => restClient.registerCredentials(credentialsId: tCredentialsId),
        ).thenAnswer((_) async => tResponse);

        // act
        final result = await dataSource.registerCredentials(tCredentialsId);

        // assert
        expect(result, isTrue);
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.registerCredentials(credentialsId: tCredentialsId),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(),
          ),
        );

        // act
        final call = dataSource.registerCredentials;

        // assert
        expect(() => call(tCredentialsId), throwsException);
      },
    );
  });
}
