import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/repositories/claims_repository.dart';

final claimsPaginationRepositoryProvider = Provider<ClaimsPaginationRepository>(
  (ref) => ClaimsPaginationRepository(
    ref.watch(claimsRepositoryProvider),
  ),
);

class ClaimsPaginationRepository
    extends FilteredPaginationListRepository<SimplifiedClaim, ClaimsFilter> {
  ClaimsPaginationRepository(
    this._claimsRepository,
  );

  final ClaimsRepository _claimsRepository;

  @override
  Future<List<SimplifiedClaim>> fetchPage({
    required int page,
    required int pageSize,
    ClaimsFilter? filter,
  }) async {
    final claims = await _claimsRepository.getSimplifiedClaims(
      filter: filter ?? const ClaimsFilter(),
      page: page,
      pageSize: pageSize,
    );
    return claims.fold(
      (l) => <SimplifiedClaim>[],
      (r) => r,
    );
  }
}
