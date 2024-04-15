import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/claims/filter/filter_simplified_claims_state.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/claims/simplified/simplified_claims_controller.dart';

final filterSimplifiedClaimsControllerProvider = StateNotifierProvider<
    FilterSimplifiedClaimsController, FilterSimplifiedClaimsState>(
  (ref) => FilterSimplifiedClaimsController(
    ref.read(simplifiedClaimsControllerProvider.notifier),
  ),
);

class FilterSimplifiedClaimsController
    extends StateNotifier<FilterSimplifiedClaimsState> {
  FilterSimplifiedClaimsController(
    this._simplifiedClaimsController,
  ) : super(const FilterSimplifiedClaimsState());

  final SimplifiedClaimsController _simplifiedClaimsController;

  Future<void> applyFilters() async {
    await _simplifiedClaimsController.updateFilter(
      claimId: state.claimId,
      insuranceIds: state.insuranceIds,
      year: state.year,
      dossier: state.dossier,
      createDateFrom: state.createDateFrom,
      createDateTo: state.createDateTo,
      status: state.status,
      riskType: state.riskType,
      reason: state.reason,
      riskLocation: state.riskLocation,
      processStartDateFrom: state.processStartDateFrom,
      processStartDateTo: state.processStartDateTo,
      processEndDateFrom: state.processEndDateFrom,
      processEndDateTo: state.processEndDateTo,
      agentName: state.agentName,
      agentEmail: state.agentEmail,
      agentTelephone: state.agentTelephone,
    );
  }

  Future<void> resetFilters() async {
    state = const FilterSimplifiedClaimsState();
    await applyFilters();
  }

  void setClaimId(String claimId) {
    state = state.copyWith(claimId: claimId);
  }

  void setInsuranceIds(List<int> insuranceIds) {
    state = state.copyWith(insuranceIds: insuranceIds);
  }

  void setYear(int year) {
    state = state.copyWith(year: year);
  }

  void setDossier(String dossier) {
    state = state.copyWith(dossier: dossier);
  }

  void setCreateDateFrom(DateTime createDateFrom) {
    state = state.copyWith(createDateFrom: createDateFrom);
  }

  void setCreateDateTo(DateTime createDateTo) {
    state = state.copyWith(createDateTo: createDateTo);
  }

  void setStatus(String status) {
    state = state.copyWith(status: status);
  }

  void setRiskType(String riskType) {
    state = state.copyWith(riskType: riskType);
  }

  void setReason(String reason) {
    state = state.copyWith(reason: reason);
  }

  void setRiskLocation(String riskLocation) {
    state = state.copyWith(riskLocation: riskLocation);
  }

  void setProcessStartDateFrom(DateTime processStartDateFrom) {
    state = state.copyWith(processStartDateFrom: processStartDateFrom);
  }

  void setProcessStartDateTo(DateTime processStartDateTo) {
    state = state.copyWith(processStartDateTo: processStartDateTo);
  }

  void setProcessEndDateFrom(DateTime processEndDateFrom) {
    state = state.copyWith(processEndDateFrom: processEndDateFrom);
  }

  void setProcessEndDateTo(DateTime processEndDateTo) {
    state = state.copyWith(processEndDateTo: processEndDateTo);
  }

  void setAgentName(String agentName) {
    state = state.copyWith(agentName: agentName);
  }

  void setAgentEmail(String agentEmail) {
    state = state.copyWith(agentEmail: agentEmail);
  }

  void setAgentTelephone(String agentTelephone) {
    state = state.copyWith(agentTelephone: agentTelephone);
  }
}
