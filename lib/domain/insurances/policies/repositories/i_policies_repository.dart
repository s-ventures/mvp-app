import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/detailed_policy.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/failures/detailed_policy_failure.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/failures/simplified_policy_failure.dart';

// ignore: one_member_abstracts
abstract class IPoliciesRepository {
  Future<Either<SimplifiedPolicyFailure, List<SimplifiedPolicy>>>
      getSimplifiedPolicies({
    required PoliciesFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedPolicyFailure, DetailedPolicy>> getDetailedPolicy({
    required int insuranceId,
    required String policy,
  });
}
