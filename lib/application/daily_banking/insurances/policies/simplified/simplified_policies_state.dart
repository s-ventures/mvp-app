import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/simplified_policy.dart';

part 'simplified_policies_state.freezed.dart';

@freezed
class SimplifiedPoliciesState with _$SimplifiedPoliciesState {
  const factory SimplifiedPoliciesState({
    @Default(AsyncLoading<List<SimplifiedPolicy>>())
    AsyncValue<List<SimplifiedPolicy>> policies,
  }) = _SimplifiedPoliciesState;
}
