import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/failures/simplified_claim_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/repositories/i_claims_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/insurances/claims_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/data_sources/remote/claims_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/claims_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/simplified_claim_dto.dart';

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

  // @override
  // Future<Either<DetailedAccountFailure, DetailedAccount>> getDetailedAccount(
  //     {required int accountId}) async {
  //   try {
  //     final response = await _remoteDataSource.getDetailedAccount(
  //         accountId: accountId.toString());
  //     final account = response.toDomain();
  //     return right(account);
  //   } catch (_) {
  //     return left(const DetailedAccountFailure.unexpected());
  //   }
  // }
}
