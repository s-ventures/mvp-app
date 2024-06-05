import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/insurance/claims_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/data_sources/remote/claims_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/dtos/claims_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/dtos/detailed_claim_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/dtos/simplified_claim_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../fixtures_reader.dart';

class MockClaimsRestClient extends Mock implements ClaimsRestClient {}

void main() {
  late ClaimsRemoteDataSource dataSource;
  late MockClaimsRestClient restClient;

  final filter = ClaimsFilterDto();

  final tSimplifiedClaimDto = SimplifiedClaimDto.fromJson(
    'daily_banking/insurance/claims/simplified_claim_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedClaimDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedClaimDto],
  );

  const tClaimId = 3;
  const tInsuranceId = 1073;
  final tDetailedClaimDto = DetailedClaimDto.fromJson(
    'daily_banking/insurance/claims/detailed_claim_dto.json'.toFixture(),
  );

  setUp(() async {
    restClient = MockClaimsRestClient();
    dataSource = ClaimsRemoteDataSource(restClient);
  });

  group('getSimplifiedClaims', () {
    test(
      'should perform a GET request on /insurance/claims/v1/query',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedClaims(
            filter: filter,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedClaims(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedClaims(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedClaimDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedClaims(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result = await dataSource.getSimplifiedClaims(filterDto: filter);

        // assert
        expect(result, equals(tPaginatedResponse));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedClaims(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedClaims;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  group('getDetailedClaim', () {
    test(
      'should perform a GET request on /insurance/claims/v1/{insuranceId}/details/{claimId}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedClaim(
            claimId: tClaimId,
            insuranceId: tInsuranceId,
          ),
        ).thenAnswer(
          (_) async => tDetailedClaimDto,
        );

        // act
        await dataSource.getDetailedClaim(
          claimId: tClaimId,
          insuranceId: tInsuranceId,
        );

        // assert
        verify(
          () => restClient.getDetailedClaim(
            claimId: tClaimId,
            insuranceId: tInsuranceId,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedClaimDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedClaim(
            claimId: tClaimId,
            insuranceId: tInsuranceId,
          ),
        ).thenAnswer(
          (_) async => tDetailedClaimDto,
        );

        // act
        final result = await dataSource.getDetailedClaim(
          claimId: tClaimId,
          insuranceId: tInsuranceId,
        );

        // assert
        expect(result, equals(tDetailedClaimDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedClaim(
            claimId: tClaimId,
            insuranceId: tInsuranceId,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedClaim;

        // assert
        expect(
          () => call(
            claimId: tClaimId,
            insuranceId: tInsuranceId,
          ),
          throwsException,
        );
      },
    );
  });
}
