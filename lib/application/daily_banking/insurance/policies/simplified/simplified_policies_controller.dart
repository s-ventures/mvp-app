import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/simplified/simplified_policies_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/repositories/policies_filtered_pagination_repository.dart';

final simplifiedPoliciesControllerProvider =
    StateNotifierProvider<SimplifiedPoliciesController, SimplifiedPoliciesState>(
  (ref) => SimplifiedPoliciesController(
    ref.watch(policiesFilteredPaginationRepositoryProvider),
  ),
);

class SimplifiedPoliciesController extends StateNotifier<SimplifiedPoliciesState>
    with FilteredPaginationLoadingProvider<List<SimplifiedPolicy>, PoliciesFilter> {
  SimplifiedPoliciesController(
    this._repository,
  ) : super(const SimplifiedPoliciesState());

  final PoliciesFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      // initialFilter: const PoliciesFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            policies: const AsyncLoading<List<SimplifiedPolicy>>().copyWithPrevious(state.policies),
          ),
        );
      },
      onDataLoaded: (policies) {
        setStateSafe(
          () => state.copyWith(policies: policies),
        );
      },
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          createDateFrom: state.createDateFrom,
          createDateTo: state.createDateTo,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    state = const SimplifiedPoliciesState();
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createDateTo: endDate);
  }
}
