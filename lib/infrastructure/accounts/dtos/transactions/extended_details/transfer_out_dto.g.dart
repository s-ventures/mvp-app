// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_out_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferOutDto _$TransferOutDtoFromJson(Map<String, dynamic> json) =>
    TransferOutDto(
      senderReference: json['senderReference'] as String?,
      type: $enumDecodeNullable(_$SentTransferTypeDtoEnumMap, json['type']),
      bankOperationCode: json['bankOperationCode'] as String?,
      senderBank: json['senderBank'] as String?,
      accountId: json['accountId'] as int,
      cusomerId: json['cusomerId'] as int,
      orderDate: _$JsonConverterFromJson<String, DateTime>(
          json['orderDate'], const DateConverter().fromJson),
      valueDate: _$JsonConverterFromJson<String, DateTime>(
          json['valueDate'], const DateConverter().fromJson),
      concept: json['concept'] as String,
      settlementAmount: (json['settlementAmount'] as num?)?.toDouble(),
      settlementCurrencyCode: json['settlementCurrencyCode'] as String?,
      foreignExchange: (json['foreignExchange'] as num?)?.toDouble(),
      exchangeValue: (json['exchangeValue'] as num?)?.toDouble(),
      detailsOfCharges: $enumDecodeNullable(
          _$TransferDetailOfChargesDtoEnumMap, json['detailsOfCharges']),
      instructedAmount: (json['instructedAmount'] as num?)?.toDouble(),
      instructedCurrencyCode: json['instructedCurrencyCode'] as String?,
      senderBankFee: (json['senderBankFee'] as num?)?.toDouble(),
      correspondantFee: (json['correspondantFee'] as num?)?.toDouble(),
      senderCorrespondentBank: json['senderCorrespondentBank'] as String?,
      intermediaryBank: json['intermediaryBank'] as String?,
      beneficiaryCorrespondentBank:
          json['beneficiaryCorrespondentBank'] as String?,
      status: $enumDecode(_$TransferStatusTypeDtoEnumMap, json['status']),
      movementNumber: json['movementNumber'] as String?,
      fileId: json['fileId'] as String?,
      concept2: json['concept2'] as String?,
      movementId: json['movementId'] as int?,
      sentTransferId: json['sentTransferId'] as int,
      periodicTransfer: json['periodicTransfer'] as bool?,
      routingNumber: json['routingNumber'] as String?,
      beneficiaryBank: json['beneficiaryBank'] as String?,
      beneficiaryAccount: json['beneficiaryAccount'] as String?,
      beneficiaryName: json['beneficiaryName'] as String,
      beneficiaryAdress: json['beneficiaryAdress'] as String?,
      beneficiaryCountryCode2char:
          json['beneficiaryCountryCode2char'] as String?,
      beneficiaryBankFee: (json['beneficiaryBankFee'] as num?)?.toDouble(),
      senderPhone: json['senderPhone'] as String?,
      beneficiaryCity: json['beneficiaryCity'] as String?,
      additionalInformationSwift: json['additionalInformationSwift'] as String?,
      transferDate: _$JsonConverterFromJson<String, DateTime>(
          json['transferDate'], const DateConverter().fromJson),
      identificationDocNumber: json['identificationDocNumber'] as String?,
      swiftFee: json['swiftFee'] as String?,
    );

Map<String, dynamic> _$TransferOutDtoToJson(TransferOutDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', _$SentTransferTypeDtoEnumMap[instance.type]);
  writeNotNull('senderReference', instance.senderReference);
  writeNotNull('bankOperationCode', instance.bankOperationCode);
  writeNotNull('senderBank', instance.senderBank);
  val['accountId'] = instance.accountId;
  val['cusomerId'] = instance.cusomerId;
  writeNotNull(
      'orderDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.orderDate, const DateConverter().toJson));
  writeNotNull(
      'valueDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.valueDate, const DateConverter().toJson));
  val['concept'] = instance.concept;
  writeNotNull('settlementAmount', instance.settlementAmount);
  writeNotNull('settlementCurrencyCode', instance.settlementCurrencyCode);
  writeNotNull('foreignExchange', instance.foreignExchange);
  writeNotNull('exchangeValue', instance.exchangeValue);
  writeNotNull('detailsOfCharges',
      _$TransferDetailOfChargesDtoEnumMap[instance.detailsOfCharges]);
  writeNotNull('instructedAmount', instance.instructedAmount);
  writeNotNull('instructedCurrencyCode', instance.instructedCurrencyCode);
  writeNotNull('senderBankFee', instance.senderBankFee);
  writeNotNull('correspondantFee', instance.correspondantFee);
  writeNotNull('senderCorrespondentBank', instance.senderCorrespondentBank);
  writeNotNull('intermediaryBank', instance.intermediaryBank);
  writeNotNull(
      'beneficiaryCorrespondentBank', instance.beneficiaryCorrespondentBank);
  val['status'] = _$TransferStatusTypeDtoEnumMap[instance.status]!;
  writeNotNull('movementNumber', instance.movementNumber);
  writeNotNull('fileId', instance.fileId);
  writeNotNull('concept2', instance.concept2);
  writeNotNull('movementId', instance.movementId);
  val['sentTransferId'] = instance.sentTransferId;
  writeNotNull('periodicTransfer', instance.periodicTransfer);
  writeNotNull('routingNumber', instance.routingNumber);
  writeNotNull('beneficiaryBank', instance.beneficiaryBank);
  writeNotNull('beneficiaryAccount', instance.beneficiaryAccount);
  val['beneficiaryName'] = instance.beneficiaryName;
  writeNotNull('beneficiaryAdress', instance.beneficiaryAdress);
  writeNotNull(
      'beneficiaryCountryCode2char', instance.beneficiaryCountryCode2char);
  writeNotNull('beneficiaryBankFee', instance.beneficiaryBankFee);
  writeNotNull('senderPhone', instance.senderPhone);
  writeNotNull('beneficiaryCity', instance.beneficiaryCity);
  writeNotNull(
      'additionalInformationSwift', instance.additionalInformationSwift);
  writeNotNull(
      'transferDate',
      _$JsonConverterToJson<String, DateTime>(
          instance.transferDate, const DateConverter().toJson));
  writeNotNull('identificationDocNumber', instance.identificationDocNumber);
  writeNotNull('swiftFee', instance.swiftFee);
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

const _$TransferDetailOfChargesDtoEnumMap = {
  TransferDetailOfChargesDto.sha: 'SHA',
  TransferDetailOfChargesDto.our: 'OUR',
  TransferDetailOfChargesDto.ben: 'BEN',
};

const _$TransferStatusTypeDtoEnumMap = {
  TransferStatusTypeDto.sent: 'SENT',
  TransferStatusTypeDto.received: 'RECEIVED',
  TransferStatusTypeDto.cancelled: 'CANCELLED',
  TransferStatusTypeDto.pending: 'PENDING',
  TransferStatusTypeDto.rejected: 'REJECTED',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
