import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/claims/entities/detailed_claim.dart';

part 'detailed_claim_state.freezed.dart';

@freezed
class DetailedClaimState with _$DetailedClaimState {
  const factory DetailedClaimState({
    @Default(AsyncLoading<DetailedClaim>()) AsyncValue<DetailedClaim> claim,
  }) = _DetailedClaimState;
}
