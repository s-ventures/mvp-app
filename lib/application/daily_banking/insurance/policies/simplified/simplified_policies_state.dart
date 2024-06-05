import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';

part 'simplified_policies_state.freezed.dart';

@freezed
class SimplifiedPoliciesState with _$SimplifiedPoliciesState {
  const factory SimplifiedPoliciesState({
    @Default(AsyncLoading<List<SimplifiedPolicy>>()) AsyncValue<List<SimplifiedPolicy>> policies,
    DateTime? createDateFrom,
    DateTime? createDateTo,
  }) = _SimplifiedPoliciesState;
}
