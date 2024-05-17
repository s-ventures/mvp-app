import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/cards/cards_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/remote/cards_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/detailed_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/simplified_card_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockCardsRestClient extends Mock implements CardsRestClient {}

void main() {
  late CardsRemoteDataSource dataSource;
  late MockCardsRestClient restClient;

  final paginatedRequest = PaginatedRequest(pageSize: 10, pageNumber: 0);
  final tSimplifiedCardDto = SimplifiedCardDto.fromJson(
    'daily_banking/cards/simplified_card_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedCardDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedCardDto],
  );
  final tDetailedCardDto = DetailedCardDto.fromJson(
    'daily_banking/cards/detailed_card_dto.json'.toFixture(),
  );
  final tPaginatedResponseDetailedCard = PaginatedResponse<DetailedCardDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tDetailedCardDto],
  );

  setUp(() async {
    restClient = MockCardsRestClient();
    dataSource = CardsRemoteDataSource(restClient);
  });

  group('getSimplifiedCards', () {
    test(
      'should perform a GET request on /cards/v1/query/cards',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedCards(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedCards(
          paginatedRequest: paginatedRequest,
        );

        // assert
        verify(
          () => restClient.getSimplifiedCards(
            paginatedRequest: paginatedRequest,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedCardDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedCards(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result = await dataSource.getSimplifiedCards(
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
          () => restClient.getSimplifiedCards(
            paginatedRequest: paginatedRequest,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedCards;

        // assert
        expect(
          () => call(paginatedRequest: paginatedRequest),
          throwsException,
        );
      },
    );
  });

  group('getDetailedCard', () {
    test(
      'should perform a GET request on /cards/v1/query/cards/detailed',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCard(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponseDetailedCard,
        );

        // act
        await dataSource.getDetailedCard(
          paginatedRequest: paginatedRequest,
        );

        // assert
        verify(
          () => restClient.getDetailedCard(
            paginatedRequest: paginatedRequest,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of DetailedCardDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCard(
            paginatedRequest: paginatedRequest,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponseDetailedCard,
        );

        // act
        final result = await dataSource.getDetailedCard(
          paginatedRequest: paginatedRequest,
        );

        // assert
        expect(result, equals(tPaginatedResponseDetailedCard));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedCard(
            paginatedRequest: paginatedRequest,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedCard;

        // assert
        expect(
          () => call(paginatedRequest: paginatedRequest),
          throwsException,
        );
      },
    );
  });
}