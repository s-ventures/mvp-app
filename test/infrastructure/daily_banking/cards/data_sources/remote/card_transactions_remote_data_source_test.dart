import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transaction_operation_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/cards/card_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/remote/card_transactions_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/date_card_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockCardTransactionsRestClient extends Mock implements CardTransactionsRestClient {}

void main() {
  late CardTransactionsRemoteDataSource dataSource;
  late MockCardTransactionsRestClient restClient;

  final filter = CardTransactionsFilterDto(
    cardContractId: [],
    operationType: TransactionOperationTypeDto.credit,
    cardId: [],
    amountFrom: null,
    amountTo: null,
    postingDateFrom: null,
    postingDateTo: null,
    concept: null,
  );
  final tDateCardTransactionsDto = DateCardTransactionsDto.fromJson(
    'daily_banking/cards/date_card_transactions_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<DateCardTransactionsDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tDateCardTransactionsDto],
  );

  const tcardContractId = '1068';
  const tTransactionId = '64';
  final tDetailedCardTransactionDto = DetailedCardTransactionDto.fromJson(
    'daily_banking/cards/detailed_card_transaction_dto.json'.toFixture(),
  );

  setUp(() async {
    restClient = MockCardTransactionsRestClient();
    dataSource = CardTransactionsRemoteDataSource(restClient);
  });

  group('getSimplifiedCardTransactions', () {
    test(
      'should perfrom a GET request on /cards/v1/query/transactions',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedCardTransactions(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedCardTransactions(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedCardTransactions(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of DateCardTransactionsDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedCardTransactions(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result = await dataSource.getSimplifiedCardTransactions(
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
          () => restClient.getSimplifiedCardTransactions(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedCardTransactions;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  group('getDetailedCardTransaction', () {
    test(
      'should perform a GET request on /cards/v1/{cardContractId}/transactions/{transactionId}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCardTransaction(
            cardContractId: tcardContractId,
            transactionId: tTransactionId,
          ),
        ).thenAnswer(
          (_) async => tDetailedCardTransactionDto,
        );

        // act
        await dataSource.getDetailedCardTransaction(
          cardContractId: tcardContractId,
          transactionId: tTransactionId,
        );

        // assert
        verify(
          () => restClient.getDetailedCardTransaction(
            cardContractId: tcardContractId,
            transactionId: tTransactionId,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedCardTransactionDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCardTransaction(
            cardContractId: tcardContractId,
            transactionId: tTransactionId,
          ),
        ).thenAnswer(
          (_) async => tDetailedCardTransactionDto,
        );

        // act
        final result = await dataSource.getDetailedCardTransaction(
          cardContractId: tcardContractId,
          transactionId: tTransactionId,
        );

        // assert
        expect(result, equals(tDetailedCardTransactionDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCardTransaction(
            cardContractId: tcardContractId,
            transactionId: tTransactionId,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedCardTransaction;

        // assert
        expect(
          () => call(
            cardContractId: tcardContractId,
            transactionId: tTransactionId,
          ),
          throwsException,
        );
      },
    );
  });
}
