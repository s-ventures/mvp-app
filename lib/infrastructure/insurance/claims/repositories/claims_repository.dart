import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/detailed_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/failures/detailed_claim_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/failures/simplified_claim_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/repositories/i_claims_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/insurances/claims_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/data_sources/remote/claims_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/claims_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/detailed_claim_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/simplified_claim_dto.dart';

final claimsRepositoryProvider = Provider<ClaimsRepository>(
  (ref) => ClaimsRepository(
    remoteDataSource:
        ClaimsRemoteDataSource(ref.watch(claimsRestClientProvider)),
  ),
);

class ClaimsRepository implements IClaimsRepository {
  ClaimsRepository({
    required ClaimsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final ClaimsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<SimplifiedClaimFailure, List<SimplifiedClaim>>>
      getSimplifiedClaims({
    required ClaimsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = ClaimsFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedClaims(
        filterDto: filterDto,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final claims = response.data.map((e) => e.toDomain()).toList();
      return right(claims);
    } catch (_) {
      return left(const SimplifiedClaimFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedClaimFailure, DetailedClaim>> getDetailedClaim({
    required int insuranceId,
    required int claimId,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedClaim(
        insuranceId: insuranceId,
        claimId: claimId,
      );
      final claim = response.toDomain();
      return right(claim);
    } catch (_) {
      return left(const DetailedClaimFailure.unexpected());
    }
  }
}
