// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_transfers_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentTransfersFilterDto _$SentTransfersFilterDtoFromJson(
        Map<String, dynamic> json) =>
    SentTransfersFilterDto(
      type: $enumDecodeNullable(_$SentTransferTypeDtoEnumMap, json['type']),
      orderDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['orderDateFrom'], const DateConverter().fromJson),
      orderDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['orderDateTo'], const DateConverter().fromJson),
      valueDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['valueDateFrom'], const DateConverter().fromJson),
      valueDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['valueDateTo'], const DateConverter().fromJson),
      concept: json['concept'] as String?,
      settlementAmountFrom: json['settlementAmountFrom'] as int?,
      settlementAmountTo: json['settlementAmountTo'] as int?,
      foreignExchangeFrom: json['foreignExchangeFrom'] as int?,
      foreignExchangeTo: json['foreignExchangeTo'] as int?,
      exchangeValueFrom: json['exchangeValueFrom'] as int?,
      exchangeValueTo: json['exchangeValueTo'] as int?,
      instructedAmountFrom: json['instructedAmountFrom'] as int?,
      instructedAmountTo: json['instructedAmountTo'] as int?,
      status: $enumDecodeNullable(
          _$SentTransferStatusTypeDtoEnumMap, json['status']),
      concept2: json['concept2'] as String?,
      sentTransferId: json['sentTransferId'] as int?,
      beneficiaryName: json['beneficiaryName'] as String?,
      transferDateFrom: _$JsonConverterFromJson<String, DateTime>(
          json['transferDateFrom'], const DateConverter().fromJson),
      transferDateTo: _$JsonConverterFromJson<String, DateTime>(
          json['transferDateTo'], const DateConverter().fromJson),
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
    );

Map<String, dynamic> _$SentTransfersFilterDtoToJson(
    SentTransfersFilterDto instance) {
  final val = <String, dynamic>{
    'pageSize': instance.pageSize,
    'pageNumber': instance.pageNumber,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$SentTransferTypeDtoEnumMap[instance.type]);
  writeNotNull(
      'orderDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.orderDateFrom, const DateConverter().toJson));
  writeNotNull(
      'orderDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.orderDateTo, const DateConverter().toJson));
  writeNotNull(
      'valueDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.valueDateFrom, const DateConverter().toJson));
  writeNotNull(
      'valueDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.valueDateTo, const DateConverter().toJson));
  writeNotNull('concept', instance.concept);
  writeNotNull('settlementAmountFrom', instance.settlementAmountFrom);
  writeNotNull('settlementAmountTo', instance.settlementAmountTo);
  writeNotNull('foreignExchangeFrom', instance.foreignExchangeFrom);
  writeNotNull('foreignExchangeTo', instance.foreignExchangeTo);
  writeNotNull('exchangeValueFrom', instance.exchangeValueFrom);
  writeNotNull('exchangeValueTo', instance.exchangeValueTo);
  writeNotNull('instructedAmountFrom', instance.instructedAmountFrom);
  writeNotNull('instructedAmountTo', instance.instructedAmountTo);
  writeNotNull('status', _$SentTransferStatusTypeDtoEnumMap[instance.status]);
  writeNotNull('concept2', instance.concept2);
  writeNotNull('sentTransferId', instance.sentTransferId);
  writeNotNull('beneficiaryName', instance.beneficiaryName);
  writeNotNull(
      'transferDateFrom',
      _$JsonConverterToJson<String, DateTime>(
          instance.transferDateFrom, const DateConverter().toJson));
  writeNotNull(
      'transferDateTo',
      _$JsonConverterToJson<String, DateTime>(
          instance.transferDateTo, const DateConverter().toJson));
  val['sortingTarget'] = instance._sortingTarget;
  val['sortingOrder'] = instance._sortingOrder;
  return val;
}

const _$SentTransferTypeDtoEnumMap = {
  SentTransferTypeDto.transfer: 'TRANSFER',
  SentTransferTypeDto.between_my_accounts: 'BETWEEN_MY_ACCOUNTS',
  SentTransferTypeDto.inmediate: 'INMEDIATE',
  SentTransferTypeDto.urgent: 'URGENT',
  SentTransferTypeDto.sepa: 'SEPA',
  SentTransferTypeDto.internal: 'INTERNAL',
  SentTransferTypeDto.international: 'INTERNATIONAL',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SentTransferStatusTypeDtoEnumMap = {
  SentTransferStatusTypeDto.sent: 'SENT',
  SentTransferStatusTypeDto.received: 'RECEIVED',
  SentTransferStatusTypeDto.cancelled: 'CANCELLED',
  SentTransferStatusTypeDto.pending: 'PENDING',
  SentTransferStatusTypeDto.rejected: 'REJECTED',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
