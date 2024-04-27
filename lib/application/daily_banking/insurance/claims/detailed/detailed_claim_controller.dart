import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/claims/detailed/detailed_claim_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/repositories/claims_repository.dart';

final detailedClaimControllerProvider = StateNotifierProvider.autoDispose<
    DetailedClaimController, DetailedClaimState>(
  (ref) => DetailedClaimController(ref.watch(claimsRepositoryProvider)),
);

class DetailedClaimController extends StateNotifier<DetailedClaimState> {
  DetailedClaimController(this._repository) : super(const DetailedClaimState());

  final ClaimsRepository _repository;

  Future<void> init({required int insuranceId, required int claimId}) async {
    try {
      final transactionOrFailure = await _repository.getDetailedClaim(
        insuranceId: insuranceId,
        claimId: claimId,
      );

      setStateSafe(
        () => transactionOrFailure.fold(
          (l) => state.copyWith(claim: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(claim: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(claim: AsyncError(e, StackTrace.current));
    }
  }
}
