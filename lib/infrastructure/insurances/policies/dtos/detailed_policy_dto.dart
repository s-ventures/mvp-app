// {
//   "insuranceId": 0,
//   "policy": "string",
//   "certificateNumber": "string",
//   "createDate": "2024-04-25",
//   "endDate": "2024-04-25",
//   "status": "string",
//   "description": "string",
//   "amount": 0,
//   "lastInvoiceAmount": 0,
//   "paymentPeriodicity": "MONTHLY"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/insurances/policies/entities/detailed_policy.dart';
import 'package:manifiesto_mvp_app/infrastructure/insurances/policies/dtos/policy_payment_periodicity_dto.dart';

part 'detailed_policy_dto.freezed.dart';
part 'detailed_policy_dto.g.dart';

@freezed
class DetailedPolicyDto with _$DetailedPolicyDto {
  const factory DetailedPolicyDto({
    required int insuranceId,
    required String policy,
    required String certificateNumber,
    required DateTime createDate,
    required DateTime endDate,
    required String
        status, //TODO: Change to enum PolicyStatusType when BE is ready
    required String description,
    required double amount,
    required double lastInvoiceAmount,
    required PolicyPaymentPeriodicityDto paymentPeriodicity,
  }) = _DetailedPolicyDto;

  factory DetailedPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedPolicyDtoFromJson(json);
}

extension DetailedPolicyDtoX on DetailedPolicyDto {
  DetailedPolicy toDomain() {
    return DetailedPolicy(
      id: UniqueId.fromUniqueString(policy),
      insuranceId: UniqueId.fromUniqueString(insuranceId.toString()),
      certificateNumber: certificateNumber,
      createDate: createDate,
      endDate: endDate,
      status: status,
      description: description,
      amount: amount,
      lastInvoiceAmount: lastInvoiceAmount,
      paymentPeriodicity: paymentPeriodicity.toDomain(),
    );
  }
}
