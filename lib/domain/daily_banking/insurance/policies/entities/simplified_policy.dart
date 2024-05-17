import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'simplified_policy.freezed.dart';

@freezed
class SimplifiedPolicy with _$SimplifiedPolicy {
  const factory SimplifiedPolicy({
    required UniqueId id,
    required UniqueId insuranceId,
    required String status, // TODO(georgeta): Change to enum PolicyStatusType when BE is ready
    required String description,
  }) = _SimplifiedPolicy;
}
