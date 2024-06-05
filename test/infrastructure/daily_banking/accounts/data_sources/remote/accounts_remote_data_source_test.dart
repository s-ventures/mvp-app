import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/accounts_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/accounts_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/detailed_account_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/simplified_account_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockAccountsRestClient extends Mock implements AccountsRestClient {}

void main() {
  late AccountsRemoteDataSource dataSource;
  late MockAccountsRestClient restClient;

  final paginatedRequest = PaginatedRequest(pageSize: 10, pageNumber: 0);
  final tSimplifiedAccountDto = SimplifiedAccountDto.fromJson(
    'daily_banking/accounts/simplified_account_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedAccountDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedAccountDto],
  );
  const tAccountId = '1';
  final tDetailedAccountDto = DetailedAccountDto.fromJson(
    'daily_banking/accounts/detailed_account_dto.json'.toFixture(),
  );

  setUp(() async {
    restClient = MockAccountsRestClient();
    dataSource = AccountsRemoteDataSource(restClient);
  });

  group('getSimplifiedAccounts', () {
    test(
      'should perform a GET request on /accounts/v1/query/accounts',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedAccounts(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedAccounts(
          paginatedRequest: paginatedRequest,
        );

        // assert
        verify(
          () => restClient.getSimplifiedAccounts(
            paginatedRequest: paginatedRequest,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedAccountDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedAccounts(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result = await dataSource.getSimplifiedAccounts(
          paginatedRequest: paginatedRequest,
        );

        // assert
        expect(result, equals(tPaginatedResponse));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedAccounts(
            paginatedRequest: paginatedRequest,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedAccounts;

        // assert
        expect(
          () => call(paginatedRequest: paginatedRequest),
          throwsException,
        );
      },
    );
  });

  group('getDetailedAccount', () {
    test(
      'should perform a GET request on /accounts/v1/{accountId}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedAccount(accountId: tAccountId),
        ).thenAnswer(
          (_) async => tDetailedAccountDto,
        );

        // act
        await dataSource.getDetailedAccount(accountId: tAccountId);

        // assert
        verify(
          () => restClient.getDetailedAccount(accountId: tAccountId),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedAccountDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedAccount(accountId: tAccountId),
        ).thenAnswer(
          (_) async => tDetailedAccountDto,
        );

        // act
        final result =
            await dataSource.getDetailedAccount(accountId: tAccountId);

        // assert
        expect(result, equals(tDetailedAccountDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedAccount(accountId: tAccountId),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedAccount;

        // assert
        expect(
          () => call(accountId: tAccountId),
          throwsException,
        );
      },
    );
  });
}
