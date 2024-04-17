import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurances/claims/simplified/simplified_claims_state.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/repositories/claims_pagination_repository.dart';

final simplifiedClaimsControllerProvider =
    StateNotifierProvider<SimplifiedClaimsController, SimplifiedClaimsState>(
  (ref) => SimplifiedClaimsController(
    ref.watch(claimsPaginationRepositoryProvider),
  ),
);

class SimplifiedClaimsController extends StateNotifier<SimplifiedClaimsState>
    with PaginationLoadingProvider<List<SimplifiedClaim>> {
  SimplifiedClaimsController(
    this._repository,
  ) : super(const SimplifiedClaimsState());

  final ClaimsPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            claims: const AsyncLoading<List<SimplifiedClaim>>()
                .copyWithPrevious(state.claims),
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

  Future<void> updateFilter({
    required int? claimId,
    required List<int>? insuranceIds,
    required int? year,
    required String? dossier,
    required DateTime? createDateFrom,
    required DateTime? createDateTo,
    required String? status,
    required String? riskType,
    required String? reason,
    required String? riskLocation,
    required DateTime? processStartDateFrom,
    required DateTime? processStartDateTo,
    required DateTime? processEndDateFrom,
    required DateTime? processEndDateTo,
    required String? agentName,
    required String? agentEmail,
    required String? agentTelephone,
  }) async {
    _repository.updateFilter(
      claimId: claimId,
      insuranceIds: insuranceIds,
      year: year,
      dossier: dossier,
      createDateFrom: createDateFrom,
      createDateTo: createDateTo,
      status: status,
      riskType: riskType,
      reason: reason,
      riskLocation: riskLocation,
      processStartDateFrom: processStartDateFrom,
      processStartDateTo: processStartDateTo,
      processEndDateFrom: processEndDateFrom,
      processEndDateTo: processEndDateTo,
      agentName: agentName,
      agentEmail: agentEmail,
      agentTelephone: agentTelephone,
    );
    await refresh();
  }
}
