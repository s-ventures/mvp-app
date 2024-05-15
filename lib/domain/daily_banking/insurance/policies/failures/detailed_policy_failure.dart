import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_policy_failure.freezed.dart';

@freezed
class DetailedPolicyFailure with _$DetailedPolicyFailure {
  const factory DetailedPolicyFailure.unexpected() = _Unexpected;
}
