import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/detailed_policy.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/failures/detailed_policy_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/failures/simplified_policy_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/repositories/i_policies_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/insurance/policies_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/data_sources/policies_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/detailed_policy_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/policies_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/simplified_policy_dto.dart';

final policiesRepositoryProvider = Provider<PoliciesRepository>(
  (ref) => PoliciesRepository(
    remoteDataSource:
        PoliciesRemoteDataSource(ref.watch(policiesRestClientProvider)),
  ),
);

class PoliciesRepository implements IPoliciesRepository {
  PoliciesRepository({
    required PoliciesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final PoliciesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<SimplifiedPolicyFailure, List<SimplifiedPolicy>>>
      getSimplifiedPolicies({
    required PoliciesFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = PoliciesFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedPolicies(
        filterDto: filterDto,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final policies = response.data.map((e) => e.toDomain()).toList();
      return right(policies);
    } catch (_) {
      return left(const SimplifiedPolicyFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedPolicyFailure, DetailedPolicy>> getDetailedPolicy({
    required int insuranceId,
    required int policy,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedPolicy(
        insuranceId: insuranceId,
        policy: policy,
      );
      final detailedPolicy = response.toDomain();
      return right(detailedPolicy);
    } catch (_) {
      return left(const DetailedPolicyFailure.unexpected());
    }
  }
}
