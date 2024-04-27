import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregation_state.freezed.dart';

@freezed
class AggregationState with _$AggregationState {
  const factory AggregationState({
    @Default(AsyncLoading<String>()) AsyncValue<String> aggregationServiceUrl,
  }) = _AggregationState;
}
