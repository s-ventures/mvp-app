// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_transactions_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountTransactionsFilterDto _$AccountTransactionsFilterDtoFromJson(
        Map<String, dynamic> json) =>
    AccountTransactionsFilterDto(
      accountId:
          (json['accountId'] as List<dynamic>).map((e) => e as int).toList(),
      operationType: $enumDecode(
          _$TransactionOperationTypeDtoEnumMap, json['operationType']),
      description: json['description'] as String?,
      amountFrom: (json['amountFrom'] as num?)?.toDouble(),
      amountTo: (json['amountTo'] as num?)?.toDouble(),
      postingDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['postingDateFrom'], const DateConverter().fromJson),
      postingDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['postingDateTo'], const DateConverter().fromJson),
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$AccountTransactionsFilterDtoToJson(
    AccountTransactionsFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
    'accountId': instance.accountId,
    'operationType':
        _$TransactionOperationTypeDtoEnumMap[instance.operationType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull(
      'postingDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.postingDateFrom, const DateConverter().toJson));
  writeNotNull(
      'postingDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.postingDateTo, const DateConverter().toJson));
  writeNotNull('amountFrom', instance.amountFrom);
  writeNotNull('amountTo', instance.amountTo);
  val['sortBy'] = instance._sortBy;
  val['sortOrder'] = instance._sortOrder;
  return val;
}

const _$TransactionOperationTypeDtoEnumMap = {
  TransactionOperationTypeDto.timeline: 'TIMELINE',
  TransactionOperationTypeDto.credit: 'CREDIT',
  TransactionOperationTypeDto.debit: 'DEBIT',
  TransactionOperationTypeDto.creditDebit: 'CREDIT_DEBIT',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
