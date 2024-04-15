import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_claim_failure.freezed.dart';

@freezed
class SimplifiedClaimFailure with _$SimplifiedClaimFailure {
  const factory SimplifiedClaimFailure.unexpected() = _Unexpected;
}
