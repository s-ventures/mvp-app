import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/claims_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/detailed_claim_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/simplified_claim_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'claims_rest_client.g.dart';

final claimsRestClientProvider = Provider<ClaimsRestClient>(
  (ref) => ClaimsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class ClaimsRestClient {
  factory ClaimsRestClient(Dio dio) = _ClaimsRestClient;

  @GET('/insurance/claims/v1/query')
  Future<PaginatedResponse<SimplifiedClaimDto>> getSimplifiedClaims({
    @Query('') required ClaimsFilterDto filter,
  });

  @GET('/insurance/claims/v1/{insuranceId}/details/{claimId}')
  Future<DetailedClaimDto> getDetailedClaim({
    @Path('insuranceId') required int insuranceId,
    @Path('claimId') required int claimId,
  });
}
