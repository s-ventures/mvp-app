import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_periodic_order_failure.freezed.dart';

@freezed
class SimplifiedPeriodicOrderFailure with _$SimplifiedPeriodicOrderFailure {
  const factory SimplifiedPeriodicOrderFailure.unexpected() = _Unexpected;
}
