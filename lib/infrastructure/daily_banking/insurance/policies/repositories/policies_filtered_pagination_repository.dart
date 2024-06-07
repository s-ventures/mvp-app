import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/repositories/policies_repository.dart';

final policiesFilteredPaginationRepositoryProvider = Provider<PoliciesFilteredPaginationRepository>(
  (ref) => PoliciesFilteredPaginationRepository(
    ref.watch(policiesRepositoryProvider),
  ),
);

class PoliciesFilteredPaginationRepository
    extends IFilteredPaginationListRepository<SimplifiedPolicy, PoliciesFilter> {
  PoliciesFilteredPaginationRepository(
    this._policiesRepository,
  );
  final PoliciesRepository _policiesRepository;

  @override
  Future<List<SimplifiedPolicy>> fetchPage({
    required int page,
    required int pageSize,
    PoliciesFilter? filter,
  }) async {
    final policies = await _policiesRepository.getSimplifiedPolicies(
      filter: filter ?? const PoliciesFilter(),
      page: page,
      pageSize: pageSize,
    );
    return policies.fold(
      (l) => <SimplifiedPolicy>[],
      (r) => r,
    );
  }
}
