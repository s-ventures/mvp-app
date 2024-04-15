import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/insurances/claims_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/claims_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/detailed_claim_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/simplified_claim_dto.dart';

class ClaimsRemoteDataSource {
  ClaimsRemoteDataSource(this._restClient);

  final ClaimsRestClient _restClient;

  Future<PaginatedResponse<SimplifiedClaimDto>> getSimplifiedClaims({
    required ClaimsFilterDto filterDto,
  }) {
    try {
      return _restClient.getSimplifiedClaims(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedClaimDto> getDetailedClaim({
    required int insuranceId,
    required int claimId,
  }) async {
    try {
      final response = await _restClient.getDetailedClaim(
        insuranceId: insuranceId,
        claimId: claimId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
