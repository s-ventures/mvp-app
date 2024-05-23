import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/simplified/simplified_claims_state.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/claims_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/simplified_claim.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/claims/repositories/claims_pagination_repository.dart';

final simplifiedClaimsControllerProvider =
    StateNotifierProvider.autoDispose<SimplifiedClaimsController, SimplifiedClaimsState>(
  (ref) => SimplifiedClaimsController(
    ref.watch(claimsPaginationRepositoryProvider),
  ),
);

class SimplifiedClaimsController extends StateNotifier<SimplifiedClaimsState>
    with FilteredPaginationLoadingProvider<List<SimplifiedClaim>, ClaimsFilter> {
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
}
