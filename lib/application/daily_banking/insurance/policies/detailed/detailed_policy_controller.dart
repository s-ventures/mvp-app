import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/insurance/policies/detailed/detailed_policy_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurance/policies/repositories/policies_repository.dart';

final detailedPolicyControllerProvider = StateNotifierProvider.autoDispose<
    DetailedPolicyController, DetailedPolicyState>(
  (ref) => DetailedPolicyController(ref.watch(policiesRepositoryProvider)),
);

class DetailedPolicyController extends StateNotifier<DetailedPolicyState> {
  DetailedPolicyController(this._repository)
      : super(const DetailedPolicyState());

  final PoliciesRepository _repository;

  Future<void> init({
    required int insuranceId,
    required int policyId,
  }) async {
    try {
      final transactionOrFailure = await _repository.getDetailedPolicy(
        insuranceId: insuranceId,
        policy: policyId,
      );

      setStateSafe(
        () => transactionOrFailure.fold(
          (l) => state.copyWith(policy: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(policy: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(policy: AsyncError(e, StackTrace.current));
    }
  }
}
