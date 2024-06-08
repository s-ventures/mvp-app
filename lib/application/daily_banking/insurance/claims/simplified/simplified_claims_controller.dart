import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/repositories/claims_filtered_pagination_repository.dart';

final simplifiedClaimsControllerProvider =
    StateNotifierProvider.autoDispose<SimplifiedClaimsController, SimplifiedClaimsState>(
  (ref) => SimplifiedClaimsController(
    ref.watch(claimsFilteredPaginationRepositoryProvider),
  ),
);

class SimplifiedClaimsController extends StateNotifier<SimplifiedClaimsState>
    with FilteredPaginationLoadingProvider<List<SimplifiedClaim>, ClaimsFilter> {
  SimplifiedClaimsController(
    this._repository,
  ) : super(const SimplifiedClaimsState());

  // TODO: Replace with interface
  final ClaimsFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const ClaimsFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            claims: const AsyncLoading<List<SimplifiedClaim>>().copyWithPrevious(state.claims),
          ),
        );
      },
      onDataLoaded: (claims) {
        setStateSafe(
          () => state.copyWith(claims: claims),
        );
      },
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          insuranceIds: state.insuranceIds,
          createDateFrom: state.createDateFrom,
          createDateTo: state.createDateTo,
          status: state.status,
          riskType: state.riskType,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        insuranceIds: [],
        createDateFrom: null,
        createDateTo: null,
        status: null,
        riskType: null,
      ),
    );
    await applyFilters();
  }

  void setInsuranceIds(List<int> insuranceIds) {
    state = state.copyWith(insuranceIds: insuranceIds);
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createDateTo: endDate);
  }

  void setStatus(ClaimStatusType? status) {
    state = state.copyWith(status: status);
  }

  void setRiskType(String? riskType) {
    state = state.copyWith(riskType: riskType);
  }
}
