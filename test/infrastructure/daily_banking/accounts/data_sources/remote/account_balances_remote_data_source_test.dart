import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/account_balances_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/account_balances_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/balances/account_balance_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockAccountBalancesRestClient extends Mock
    implements AccountBalancesRestClient {}

void main() {
  late AccountBalancesRemoteDataSource dataSource;
  late MockAccountBalancesRestClient restClient;

  const tAccountId = '1';
  final tAccountBalanceDto = AccountBalanceDto.fromJson(
    'daily_banking/accounts/account_balances_dto.json'.toFixture(),
  );

  setUp(() async {
    restClient = MockAccountBalancesRestClient();
    dataSource = AccountBalancesRemoteDataSource(restClient);
  });

  group('getAccountBalance', () {
    test(
      'should perform a GET request on /accounts/v1/{accountId}/balance',
      () async {
        // arrange
        when(
          () => restClient.getAccountBalance(accountId: tAccountId),
        ).thenAnswer(
          (_) async => tAccountBalanceDto,
        );

        // act
        await dataSource.getAccountBalance(accountId: tAccountId);

        // assert
        verify(
          () => restClient.getAccountBalance(accountId: tAccountId),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return an AccountBalanceDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getAccountBalance(accountId: tAccountId),
        ).thenAnswer(
          (_) async => tAccountBalanceDto,
        );

        // act
        final result =
            await dataSource.getAccountBalance(accountId: tAccountId);

        // assert
        expect(result, equals(tAccountBalanceDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getAccountBalance(accountId: tAccountId),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(),
          ),
        );

        // act
        final call = dataSource.getAccountBalance;

        // assert
        expect(
          () => call(accountId: tAccountId),
          throwsException,
        );
      },
    );
  });
}
