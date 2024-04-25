import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/detailed_policy.dart';

part 'detailed_policy_state.freezed.dart';

@freezed
class DetailedPolicyState with _$DetailedPolicyState {
  const factory DetailedPolicyState({
    @Default(AsyncLoading<DetailedPolicy>()) AsyncValue<DetailedPolicy> policy,
  }) = _DetailedPolicyState;
}
