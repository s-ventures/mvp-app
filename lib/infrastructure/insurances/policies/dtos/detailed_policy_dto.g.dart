// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedPolicyDtoImpl _$$DetailedPolicyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedPolicyDtoImpl(
      insuranceId: json['insuranceId'] as int,
      policy: json['policy'] as String,
      certificateNumber: json['certificateNumber'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: json['status'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      lastInvoiceAmount: (json['lastInvoiceAmount'] as num).toDouble(),
      paymentPeriodicity: $enumDecode(
          _$PolicyPaymentPeriodicityDtoEnumMap, json['paymentPeriodicity']),
    );

Map<String, dynamic> _$$DetailedPolicyDtoImplToJson(
        _$DetailedPolicyDtoImpl instance) =>
    <String, dynamic>{
      'insuranceId': instance.insuranceId,
      'policy': instance.policy,
      'certificateNumber': instance.certificateNumber,
      'createDate': instance.createDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'description': instance.description,
      'amount': instance.amount,
      'lastInvoiceAmount': instance.lastInvoiceAmount,
      'paymentPeriodicity':
          _$PolicyPaymentPeriodicityDtoEnumMap[instance.paymentPeriodicity]!,
    };

const _$PolicyPaymentPeriodicityDtoEnumMap = {
  PolicyPaymentPeriodicityDto.monthly: 'MONTHLY',
  PolicyPaymentPeriodicityDto.quarterly: 'QUARTERLY',
  PolicyPaymentPeriodicityDto.annual: 'ANNUAL',
};
