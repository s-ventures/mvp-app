// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebitDto _$DebitDtoFromJson(Map<String, dynamic> json) => DebitDto(
      debitId: json['debitId'] as int,
      accountId: json['accountId'] as int,
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String?,
      issuer: json['issuer'] as String?,
      identification: json['identification'] as String?,
      dueDate: _$JsonConverterFromJson<String, DateTime>(
          json['dueDate'], const DateConverter().fromJson),
      suffix: json['suffix'] as String?,
      sort: json['sort'] as String?,
      issuerName: json['issuerName'] as String,
      nrc: json['nrc'] as String?,
      bankReference: json['bankReference'] as String?,
      paymentDate: _$JsonConverterFromJson<String, DateTime>(
          json['paymentDate'], const DateConverter().fromJson),
      movementNumber: json['movementNumber'] as String,
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$DebitDtoToJson(DebitDto instance) {
  final val = <String, dynamic>{
    'debitId': instance.debitId,
    'accountId': instance.accountId,
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currencyCode', instance.currencyCode);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('identification', instance.identification);
  writeNotNull(
      'dueDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.dueDate, const DateConverter().toJson));
  writeNotNull('suffix', instance.suffix);
  writeNotNull('sort', instance.sort);
  val['issuerName'] = instance.issuerName;
  writeNotNull('nrc', instance.nrc);
  writeNotNull('bankReference', instance.bankReference);
  writeNotNull(
      'paymentDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.paymentDate, const DateConverter().toJson));
  val['movementNumber'] = instance.movementNumber;
  writeNotNull('fileId', instance.fileId);
  return val;
}

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
