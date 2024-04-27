import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/failures/simplified_policy_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/repositories/i_policies_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/insurances/policies_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/policies/data_sources/policies_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/policies/dtos/policies_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/policies/dtos/simplified_policy_dto.dart';

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
}
