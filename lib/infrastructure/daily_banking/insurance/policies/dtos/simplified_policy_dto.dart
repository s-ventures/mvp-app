//  {
//       "insuranceId": 0,
//       "policy": "string",
//       "status": "string",
//       "description": "string"
//     }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/simplified_policy.dart';

part 'simplified_policy_dto.freezed.dart';
part 'simplified_policy_dto.g.dart';

@freezed
class SimplifiedPolicyDto with _$SimplifiedPolicyDto {
  const factory SimplifiedPolicyDto({
    required int insuranceId,
    required String policy,
    required String
        status, // TODO(georgeta): Change to enum PolicyStatusTypeDto when BE is ready
    required String description,
  }) = _SimplifiedPolicyDto;

  factory SimplifiedPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedPolicyDtoFromJson(json);
}

extension SimplifiedPolicyDtoX on SimplifiedPolicyDto {
  SimplifiedPolicy toDomain() {
    return SimplifiedPolicy(
      id: UniqueId.fromUniqueString(policy),
      insuranceId: UniqueId.fromUniqueString(insuranceId.toString()),
      status: status,
      description: description,
    );
  }
}
