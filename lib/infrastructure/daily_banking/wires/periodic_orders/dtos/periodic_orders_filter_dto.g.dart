// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periodic_orders_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeriodicOrdersFilterDto _$PeriodicOrdersFilterDtoFromJson(
        Map<String, dynamic> json) =>
    PeriodicOrdersFilterDto(
      periodicTransferId: (json['periodicTransferId'] as num?)?.toInt(),
      accountId: (json['accountId'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      beneficiaryAccount: json['beneficiaryAccount'] as String?,
      beneficiaryName: json['beneficiaryName'] as String?,
      beneficiaryAddress: json['beneficiaryAddress'] as String?,
      beneficiaryCountryCode2char:
          json['beneficiaryCountryCode2char'] as String?,
      amountFrom: (json['amountFrom'] as num?)?.toDouble(),
      amountTo: (json['amountTo'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      startDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['startDateFrom'], const DateConverter().fromJson),
      startDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['startDateTo'], const DateConverter().fromJson),
      endDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['endDateFrom'], const DateConverter().fromJson),
      endDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['endDateTo'], const DateConverter().fromJson),
      frecuency: $enumDecodeNullable(
          _$PeriodicOrderFrecuencyTypeDtoEnumMap, json['frecuency']),
      status: $enumDecodeNullable(
          _$PeriodicOrderStatusTypeDtoEnumMap, json['status']),
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 0,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$PeriodicOrdersFilterDtoToJson(
    PeriodicOrdersFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('periodicTransferId', instance.periodicTransferId);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('beneficiaryAccount', instance.beneficiaryAccount);
  writeNotNull('beneficiaryName', instance.beneficiaryName);
  writeNotNull('beneficiaryAddress', instance.beneficiaryAddress);
  writeNotNull(
      'beneficiaryCountryCode2char', instance.beneficiaryCountryCode2char);
  writeNotNull('amountFrom', instance.amountFrom);
  writeNotNull('amountTo', instance.amountTo);
  writeNotNull('currencyCode', instance.currencyCode);
  writeNotNull(
      'startDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.startDateFrom, const DateConverter().toJson));
  writeNotNull(
      'startDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.startDateTo, const DateConverter().toJson));
  writeNotNull(
      'endDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.endDateFrom, const DateConverter().toJson));
  writeNotNull(
      'endDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.endDateTo, const DateConverter().toJson));
  writeNotNull(
      'frecuency', _$PeriodicOrderFrecuencyTypeDtoEnumMap[instance.frecuency]);
  writeNotNull('status', _$PeriodicOrderStatusTypeDtoEnumMap[instance.status]);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$PeriodicOrderFrecuencyTypeDtoEnumMap = {
  PeriodicOrderFrecuencyTypeDto.daily: 'DAILY',
  PeriodicOrderFrecuencyTypeDto.weekly: 'WEEKLY',
  PeriodicOrderFrecuencyTypeDto.monthly: 'MONTHLY',
};

const _$PeriodicOrderStatusTypeDtoEnumMap = {
  PeriodicOrderStatusTypeDto.sent: 'SENT',
  PeriodicOrderStatusTypeDto.received: 'RECEIVED',
  PeriodicOrderStatusTypeDto.cancelled: 'CANCELLED',
  PeriodicOrderStatusTypeDto.pending: 'PENDING',
  PeriodicOrderStatusTypeDto.rejected: 'REJECTED',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
