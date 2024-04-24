import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/policy_status_type.dart';

part 'simplified_policy.freezed.dart';

@freezed
class SimplifiedPolicy with _$SimplifiedPolicy {
  const factory SimplifiedPolicy({
    required int insuranceId,
    required String policy,
    required PolicyStatusType status,
    required String description,
  }) = _SimplifiedPolicy;
}
