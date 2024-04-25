import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/insurances/policies_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/detailed_policy_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/policies_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/simplified_policy_dto.dart';

class PoliciesRemoteDataSource {
  PoliciesRemoteDataSource(this._restClient);

  final PoliciesRestClient _restClient;

  Future<PaginatedResponse<SimplifiedPolicyDto>> getSimplifiedPolicies({
    required PoliciesFilterDto filterDto,
  }) {
    try {
      return _restClient.getSimplifiedPolicies(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedPolicyDto> getDetailedPolicy({
    required int insuranceId,
    required String policy,
  }) async {
    try {
      final response = await _restClient.getDetailedPolicy(
        insuranceId: insuranceId,
        policy: policy,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
