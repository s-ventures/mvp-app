// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceFilterDto _$InvoiceFilterDtoFromJson(Map<String, dynamic> json) =>
    InvoiceFilterDto(
      id: json['id'] as int?,
      stakeholderId: json['stakeholderId'] as int?,
      createdDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['createdDateFrom'], const DateConverter().fromJson),
      createdDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['createdDateTo'], const DateConverter().fromJson),
      issueDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['issueDateFrom'], const DateConverter().fromJson),
      issueDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['issueDateTo'], const DateConverter().fromJson),
      totalAmountFrom: (json['totalAmountFrom'] as num?)?.toDouble(),
      totalAmountTo: (json['totalAmountTo'] as num?)?.toDouble(),
      query: json['query'] as String?,
      status: $enumDecodeNullable(_$InvoiceStatusDtoEnumMap, json['status']),
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$InvoiceFilterDtoToJson(InvoiceFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('stakeholderId', instance.stakeholderId);
  writeNotNull(
      'createdDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdDateFrom, const DateConverter().toJson));
  writeNotNull(
      'createdDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.createdDateTo, const DateConverter().toJson));
  writeNotNull(
      'issueDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.issueDateFrom, const DateConverter().toJson));
  writeNotNull(
      'issueDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.issueDateTo, const DateConverter().toJson));
  writeNotNull('totalAmountFrom', instance.totalAmountFrom);
  writeNotNull('totalAmountTo', instance.totalAmountTo);
  writeNotNull('query', instance.query);
  writeNotNull('status', _$InvoiceStatusDtoEnumMap[instance.status]);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$InvoiceStatusDtoEnumMap = {
  InvoiceStatusDto.draft: 'DRAFT',
  InvoiceStatusDto.issued: 'ISSUED',
  InvoiceStatusDto.halfPaid: 'HALF_PAID',
  InvoiceStatusDto.paid: 'PAID',
  InvoiceStatusDto.cancelled: 'CANCELLED',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
