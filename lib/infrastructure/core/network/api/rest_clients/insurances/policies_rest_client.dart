import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/detailed_policy_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/policies_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/simplified_policy_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'policies_rest_client.g.dart';

final policiesRestClientProvider = Provider<PoliciesRestClient>(
  (ref) => PoliciesRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class PoliciesRestClient {
  factory PoliciesRestClient(Dio dio) = _PoliciesRestClient;

  @GET('/insurance/policies/v1/query/policies')
  Future<PaginatedResponse<SimplifiedPolicyDto>> getSimplifiedPolicies({
    @Query('') required PoliciesFilterDto filter,
  });

  @GET('/insurance/claims/v1/detailed/{insuranceId}/policy/{policy}')
  Future<DetailedPolicyDto> getDetailedPolicy({
    @Path('insuranceId') required int insuranceId,
    @Path('policy') required String policy,
  });
}
