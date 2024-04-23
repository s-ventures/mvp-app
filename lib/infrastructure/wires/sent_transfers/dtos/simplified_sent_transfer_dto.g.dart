// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_sent_transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedSentTransferDtoImpl _$$SimplifiedSentTransferDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedSentTransferDtoImpl(
      sentTransferId: json['sentTransferId'] as int?,
      accountId: json['accountId'] as int,
      movementId: json['movementId'] as int?,
      type: $enumDecodeNullable(_$SentTransferTypeDtoEnumMap, json['type']),
      senderReference: json['senderReference'] as String?,
      senderBank: json['senderBank'] as String?,
      orderDate: DateTime.parse(json['orderDate'] as String),
      valueDate: DateTime.parse(json['valueDate'] as String),
      concept: json['concept'] as String,
      settlementAmount: (json['settlementAmount'] as num?)?.toDouble(),
      settlementCurrencyCode: json['settlementCurrencyCode'] as String?,
      foreignExchange: (json['foreignExchange'] as num?)?.toDouble(),
      exchangeValue: (json['exchangeValue'] as num?)?.toDouble(),
      detailOfCharges: json['detailOfCharges'] as String?,
      instructedAmount: (json['instructedAmount'] as num).toDouble(),
      instructedCurrencyCode: json['instructedCurrencyCode'] as String,
      status: $enumDecode(_$SentTransferStatusTypeDtoEnumMap, json['status']),
      movementNumber: json['movementNumber'] as String,
      concept2: json['concept2'] as String?,
      routingNumber: json['routingNumber'] as String?,
      beneficiaryBank: json['beneficiaryBank'] as String?,
      beneficiaryName: json['beneficiaryName'] as String,
      transferDate: json['transferDate'] == null
          ? null
          : DateTime.parse(json['transferDate'] as String),
    );

Map<String, dynamic> _$$SimplifiedSentTransferDtoImplToJson(
        _$SimplifiedSentTransferDtoImpl instance) =>
    <String, dynamic>{
      'sentTransferId': instance.sentTransferId,
      'accountId': instance.accountId,
      'movementId': instance.movementId,
      'type': _$SentTransferTypeDtoEnumMap[instance.type],
      'senderReference': instance.senderReference,
      'senderBank': instance.senderBank,
      'orderDate': instance.orderDate.toIso8601String(),
      'valueDate': instance.valueDate.toIso8601String(),
      'concept': instance.concept,
      'settlementAmount': instance.settlementAmount,
      'settlementCurrencyCode': instance.settlementCurrencyCode,
      'foreignExchange': instance.foreignExchange,
      'exchangeValue': instance.exchangeValue,
      'detailOfCharges': instance.detailOfCharges,
      'instructedAmount': instance.instructedAmount,
      'instructedCurrencyCode': instance.instructedCurrencyCode,
      'status': _$SentTransferStatusTypeDtoEnumMap[instance.status]!,
      'movementNumber': instance.movementNumber,
      'concept2': instance.concept2,
      'routingNumber': instance.routingNumber,
      'beneficiaryBank': instance.beneficiaryBank,
      'beneficiaryName': instance.beneficiaryName,
      'transferDate': instance.transferDate?.toIso8601String(),
    };

const _$SentTransferTypeDtoEnumMap = {
  SentTransferTypeDto.bases: 'BASES',
  SentTransferTypeDto.inmediatas: 'INMEDIATAS',
  SentTransferTypeDto.urgentes: 'URGENTES',
};

const _$SentTransferStatusTypeDtoEnumMap = {
  SentTransferStatusTypeDto.sent: 'SENT',
  SentTransferStatusTypeDto.received: 'RECEIVED',
  SentTransferStatusTypeDto.cancelled: 'CANCELLED',
  SentTransferStatusTypeDto.pending: 'PENDING',
  SentTransferStatusTypeDto.rejected: 'REJECTED',
};
