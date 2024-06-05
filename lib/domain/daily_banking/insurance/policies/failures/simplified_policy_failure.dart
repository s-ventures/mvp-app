import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_policy_failure.freezed.dart';

@freezed
class SimplifiedPolicyFailure with _$SimplifiedPolicyFailure {
  const factory SimplifiedPolicyFailure.unexpected() = _Unexpected;
}
