import 'package:freezed_annotation/freezed_annotation.dart';

part 'stakeholder_failure.freezed.dart';

@freezed
class StakeholderFailure with _$StakeholderFailure {
  const factory StakeholderFailure.unexpected() = _Unexpected;
}
