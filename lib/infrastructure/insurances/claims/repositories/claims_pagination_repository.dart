import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/repositories/claims_repository.dart';

final claimsPaginationRepositoryProvider = Provider<ClaimsPaginationRepository>(
  (ref) => ClaimsPaginationRepository(
    ref.watch(claimsRepositoryProvider),
  ),
);

class ClaimsPaginationRepository
    extends PaginationListRepository<SimplifiedClaim> {
  ClaimsPaginationRepository(
    this._claimsRepository,
  );
  final ClaimsRepository _claimsRepository;
  ClaimsFilter? _filter;
  ClaimsFilter? get filter => _filter;

  @override
  Future<List<SimplifiedClaim>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final claims = await _claimsRepository.getSimplifiedClaims(
      filter: filter ?? const ClaimsFilter(),
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return claims.fold(
      (l) => <SimplifiedClaim>[],
      (r) => r,
    );
  }

  void updateFilter({
    required int? claimId,
    required List<int>? insuranceIds,
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
  }) {
    _filter = (_filter ?? const ClaimsFilter()).copyWith(
      claimId: claimId,
      insuranceIds: insuranceIds,
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
  }
}
