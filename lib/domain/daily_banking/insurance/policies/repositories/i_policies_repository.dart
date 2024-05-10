import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/detailed_policy.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/failures/detailed_policy_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/failures/simplified_policy_failure.dart';

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
    required int policy,
  });
}
