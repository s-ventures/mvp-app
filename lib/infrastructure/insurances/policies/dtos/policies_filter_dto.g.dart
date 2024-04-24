// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policies_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PoliciesFilterDto _$PoliciesFilterDtoFromJson(Map<String, dynamic> json) =>
    PoliciesFilterDto(
      insuranceId: (json['insuranceId'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      policy: json['policy'] as String?,
      certificateNumber: json['certificateNumber'] as String?,
      createDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['createDateFrom'], const DateConverter().fromJson),
      createDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['createDateTo'], const DateConverter().fromJson),
      status: $enumDecodeNullable(_$PolicyStatusTypeDtoEnumMap, json['status']),
      description: json['description'] as String?,
      amountFrom: (json['amountFrom'] as num?)?.toDouble(),
      amountTo: (json['amountTo'] as num?)?.toDouble(),
      lastInvoiceAmountFrom:
          (json['lastInvoiceAmountFrom'] as num?)?.toDouble(),
      lastInvoiceAmountTo: (json['lastInvoiceAmountTo'] as num?)?.toDouble(),
      paymentPeriodicity: $enumDecodeNullable(
          _$PolicyPaymentPeriodicityDtoEnumMap, json['paymentPeriodicity']),
      iaasBranch: json['iaasBranch'] as String?,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$PoliciesFilterDtoToJson(PoliciesFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('insuranceId', instance.insuranceId);
  writeNotNull('policy', instance.policy);
  writeNotNull('certificateNumber', instance.certificateNumber);
  writeNotNull(
      'createDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateFrom, const DateConverter().toJson));
  writeNotNull(
      'createDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.createDateTo, const DateConverter().toJson));
  writeNotNull('status', _$PolicyStatusTypeDtoEnumMap[instance.status]);
  writeNotNull('description', instance.description);
  writeNotNull('amountFrom', instance.amountFrom);
  writeNotNull('amountTo', instance.amountTo);
  writeNotNull('lastInvoiceAmountFrom', instance.lastInvoiceAmountFrom);
  writeNotNull('lastInvoiceAmountTo', instance.lastInvoiceAmountTo);
  writeNotNull('paymentPeriodicity',
      _$PolicyPaymentPeriodicityDtoEnumMap[instance.paymentPeriodicity]);
  writeNotNull('iaasBranch', instance.iaasBranch);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$PolicyStatusTypeDtoEnumMap = {
  PolicyStatusTypeDto.active: 'ACTIVE',
  PolicyStatusTypeDto.closed: 'CLOSED',
  PolicyStatusTypeDto.canceled: 'CANCELED',
};

const _$PolicyPaymentPeriodicityDtoEnumMap = {
  PolicyPaymentPeriodicityDto.monthly: 'MONTHLY',
  PolicyPaymentPeriodicityDto.quarterly: 'QUARTERLY',
  PolicyPaymentPeriodicityDto.annual: 'ANNUAL',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
