import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/failures/simplified_claim_failure.dart';

abstract class IClaimsRepository {
  Future<Either<SimplifiedClaimFailure, List<SimplifiedClaim>>>
      getSimplifiedClaims({
    required ClaimsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  // Future<Either<DetailedAccountFailure, DetailedAccount>> getDetailedClaim({
  //   required int claimId,
  // });
}
