import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/filter/filter_simplified_policies_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/simplified/simplified_policies_controller.dart';

final filterSimplifiedPoliciesControllerProvider = StateNotifierProvider.autoDispose<
    FilterSimplifiedPoliciesController, FilterSimplifiedPoliciesState>(
  (ref) => FilterSimplifiedPoliciesController(
    ref.read(simplifiedPoliciesControllerProvider.notifier),
  ),
);

class FilterSimplifiedPoliciesController extends StateNotifier<FilterSimplifiedPoliciesState> {
  FilterSimplifiedPoliciesController(
    this._simplifiedPoliciesController,
  ) : super(const FilterSimplifiedPoliciesState());

  final SimplifiedPoliciesController _simplifiedPoliciesController;

  Future<void> applyFilters() async {
    await _simplifiedPoliciesController.updateFilter(
      createDateFrom: state.createDateFrom,
      createDateTo: state.createDateTo,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedPoliciesState();
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createDateTo: endDate);
  }
}
