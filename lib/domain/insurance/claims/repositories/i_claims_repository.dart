import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/detailed_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/failures/detailed_claim_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/failures/simplified_claim_failure.dart';

abstract class IClaimsRepository {
  Future<Either<SimplifiedClaimFailure, List<SimplifiedClaim>>>
      getSimplifiedClaims({
    required ClaimsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedClaimFailure, DetailedClaim>> getDetailedClaim({
    required int claimId,
    required int insuranceId,
  });
}
