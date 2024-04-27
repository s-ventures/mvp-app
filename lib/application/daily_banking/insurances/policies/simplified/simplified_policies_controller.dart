import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/policies/simplified/simplified_policies_state.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/simplified_policy.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/repositories/policies_pagination_repository.dart';

final simplifiedPoliciesControllerProvider = StateNotifierProvider<
    SimplifiedPoliciesController, SimplifiedPoliciesState>(
  (ref) => SimplifiedPoliciesController(
    ref.watch(policiesPaginationRepositoryProvider),
  ),
);

class SimplifiedPoliciesController
    extends StateNotifier<SimplifiedPoliciesState>
    with PaginationLoadingProvider<List<SimplifiedPolicy>> {
  SimplifiedPoliciesController(
    this._repository,
  ) : super(const SimplifiedPoliciesState());

  final PoliciesPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            policies: const AsyncLoading<List<SimplifiedPolicy>>()
                .copyWithPrevious(state.policies),
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
}
