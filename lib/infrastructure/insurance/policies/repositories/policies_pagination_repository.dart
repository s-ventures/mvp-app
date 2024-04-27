import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/policies/repositories/policies_repository.dart';

final policiesPaginationRepositoryProvider =
    Provider<PoliciesPaginationRepository>(
  (ref) => PoliciesPaginationRepository(
    ref.watch(policiesRepositoryProvider),
  ),
);

class PoliciesPaginationRepository
    extends PaginationListRepository<SimplifiedPolicy> {
  PoliciesPaginationRepository(
    this._policiesRepository,
  );
  final PoliciesRepository _policiesRepository;
  PoliciesFilter? _filter;

  @override
  Future<List<SimplifiedPolicy>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;

    final policies = await _policiesRepository.getSimplifiedPolicies(
      filter: filter ?? const PoliciesFilter(),
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return policies.fold(
      (l) => <SimplifiedPolicy>[],
      (r) => r,
    );
  }
}
