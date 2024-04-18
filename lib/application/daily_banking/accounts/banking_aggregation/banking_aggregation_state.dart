import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banking_aggregation_state.freezed.dart';

@freezed
class BankingAggregationState with _$BankingAggregationState {
  const factory BankingAggregationState({
    @Default(AsyncLoading<String>()) AsyncValue<String> aggregationServiceUrl,
  }) = _BankingAggregationState;
}
