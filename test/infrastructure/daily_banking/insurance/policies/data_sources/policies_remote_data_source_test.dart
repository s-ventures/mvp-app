import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/insurance/policies_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/data_sources/policies_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/detailed_policy_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/policies_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/simplified_policy_dto.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures_reader.dart';

class MockPoliciesRestClient extends Mock implements PoliciesRestClient {}

void main() {
  late PoliciesRemoteDataSource dataSource;
  late MockPoliciesRestClient restClient;

  final filter = PoliciesFilterDto();

  final tSimplifiedPolicyDto = SimplifiedPolicyDto.fromJson(
    'daily_banking/insurance/policies/simplified_policy_dto.json'.toFixture(),
  );
  final tPaginatedResponse = PaginatedResponse<SimplifiedPolicyDto>(
    totalElements: 1,
    totalPages: 1,
    data: [tSimplifiedPolicyDto],
  );

  const tPolicy = 987321;
  const tInsuranceId = 1074;
  final tDetailedPolicyDto = DetailedPolicyDto.fromJson(
    'daily_banking/insurance/policies/detailed_policy_dto.json'.toFixture(),
  );

  setUp(() async {
    restClient = MockPoliciesRestClient();
    dataSource = PoliciesRemoteDataSource(restClient);
  });

  group('getSimplifiedPolicies', () {
    test(
      'should perform a GET request on /insurance/policies/v1/query/policies',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPolicies(
            filter: filter,
          ),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        await dataSource.getSimplifiedPolicies(filterDto: filter);

        // assert
        verify(
          () => restClient.getSimplifiedPolicies(filter: filter),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a paginated list of SimplifiedPolicyDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPolicies(filter: filter),
        ).thenAnswer(
          (_) async => tPaginatedResponse,
        );

        // act
        final result =
            await dataSource.getSimplifiedPolicies(filterDto: filter);

        // assert
        expect(result, equals(tPaginatedResponse));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getSimplifiedPolicies(filter: filter),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getSimplifiedPolicies;

        // assert
        expect(
          () => call(filterDto: filter),
          throwsException,
        );
      },
    );
  });

  group('getDetailedPolicy', () {
    test(
      'should perform a GET request on /insurance/policies/v1/detailed/{insuranceId}/policy/{policy}',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPolicy(
            policy: tPolicy,
            insuranceId: tInsuranceId,
          ),
        ).thenAnswer(
          (_) async => tDetailedPolicyDto,
        );

        // act
        await dataSource.getDetailedPolicy(
          policy: tPolicy,
          insuranceId: tInsuranceId,
        );

        // assert
        verify(
          () => restClient.getDetailedPolicy(
            policy: tPolicy,
            insuranceId: tInsuranceId,
          ),
        );
        verifyNoMoreInteractions(restClient);
      },
    );

    test(
      'should return a DetailedPolicyDto when the response code is 200 (success)',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPolicy(
            policy: tPolicy,
            insuranceId: tInsuranceId,
          ),
        ).thenAnswer(
          (_) async => tDetailedPolicyDto,
        );

        // act
        final result = await dataSource.getDetailedPolicy(
          policy: tPolicy,
          insuranceId: tInsuranceId,
        );

        // assert
        expect(result, equals(tDetailedPolicyDto));
      },
    );

    test(
      'should throw an Exception when the response code is 500 or other',
      () async {
        // arrange
        when(
          () => restClient.getDetailedPolicy(
            policy: tPolicy,
            insuranceId: tInsuranceId,
          ),
        ).thenThrow(
          DioException(requestOptions: RequestOptions()),
        );

        // act
        final call = dataSource.getDetailedPolicy;

        // assert
        expect(
          () => call(
            policy: tPolicy,
            insuranceId: tInsuranceId,
          ),
          throwsException,
        );
      },
    );
  });
}
