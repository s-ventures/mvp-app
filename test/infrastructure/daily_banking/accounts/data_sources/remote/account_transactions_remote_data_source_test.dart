import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transaction_operation_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/account_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/account_transactions_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/date_account_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockAccountTransactionsRestClient extends Mock
    implements AccountTransactionsRestClient {}

void main() {
  late AccountTransactionsRemoteDataSource dataSource;
  late MockAccountTransactionsRestClient restClient;

  final filter = AccountTransactionsFilterDto(
    accountId: [],
    operationType: TransactionOperationTypeDto.credit,
    amountFrom: null,
    amountTo: null,
    description: null,
    postingDateFrom: null,
    postingDateTo: null,
  );
  final tDateAccountTransactionsDto = DateAccountTransactionsDto.fromJson(
    'daily_banking/accounts/date_account_transactions_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<DateAccountTransactionsDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tDateAccountTransactionsDto],
  );

  setUp(() async {
    restClient = MockAccountTransactionsRestClient();
    dataSource = AccountTransactionsRemoteDataSource(restClient);
  });

  group('getSimplifiedAccountTransactions', () {
    test(
      'should perfrom a GET request on /accounts/v1/query/transactions',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedAccountTransactions(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedAccountTransactions(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedAccountTransactions(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of DateAccountTransactionsDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedAccountTransactions(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result = await dataSource.getSimplifiedAccountTransactions(
          filterDto: filter,
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
          () => restClient.getSimplifiedAccountTransactions(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedAccountTransactions;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  // group('getDetailedAccountTransaction', () {});
}
