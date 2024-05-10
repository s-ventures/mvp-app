import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/claims/entities/simplified_claim.dart';

part 'simplified_claims_state.freezed.dart';

@freezed
class SimplifiedClaimsState with _$SimplifiedClaimsState {
  const factory SimplifiedClaimsState({
    @Default(AsyncLoading<List<SimplifiedClaim>>())
    AsyncValue<List<SimplifiedClaim>> claims,
  }) = _SimplifiedClaimsState;
}
