import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claim_status_type.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/repositories/claims_repository.dart';

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
    required List<int>? insuranceIds,
    required DateTime? createDateFrom,
    required DateTime? createDateTo,
    required ClaimStatusType? status,
    required String? riskType,
  }) {
    _filter = (_filter ?? const ClaimsFilter()).copyWith(
      insuranceIds: insuranceIds,
      createDateFrom: createDateFrom,
      createDateTo: createDateTo,
      status: status,
      riskType: riskType,
    );
  }
}
