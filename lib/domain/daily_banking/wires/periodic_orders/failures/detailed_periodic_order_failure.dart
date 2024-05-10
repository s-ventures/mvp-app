import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_periodic_order_failure.freezed.dart';

@freezed
class DetailedPeriodicOrderFailure with _$DetailedPeriodicOrderFailure {
  const factory DetailedPeriodicOrderFailure.unexpected() = _Unexpected;
}
