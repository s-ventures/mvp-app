import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_claim_failure.freezed.dart';

@freezed
class DetailedClaimFailure with _$DetailedClaimFailure {
  const factory DetailedClaimFailure.unexpected() = _Unexpected;
}
