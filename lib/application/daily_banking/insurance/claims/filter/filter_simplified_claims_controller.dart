import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/filter/filter_simplified_claims_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_controller.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claim_status_type.dart';

final filterSimplifiedClaimsControllerProvider = StateNotifierProvider.autoDispose<
    FilterSimplifiedClaimsController, FilterSimplifiedClaimsState>(
  (ref) => FilterSimplifiedClaimsController(
    ref.read(simplifiedClaimsControllerProvider.notifier),
  ),
);

class FilterSimplifiedClaimsController extends StateNotifier<FilterSimplifiedClaimsState> {
  FilterSimplifiedClaimsController(
    this._simplifiedClaimsController,
  ) : super(const FilterSimplifiedClaimsState());

  final SimplifiedClaimsController _simplifiedClaimsController;

  Future<void> applyFilters() async {
    await _simplifiedClaimsController.updateFilter(
      insuranceIds: state.insuranceIds,
      createDateFrom: state.createDateFrom,
      createDateTo: state.createDateTo,
      status: state.status,
      riskType: state.riskType,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedClaimsState();
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
