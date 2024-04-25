// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_sent_transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedSentTransferDtoImpl _$$SimplifiedSentTransferDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedSentTransferDtoImpl(
      type: $enumDecode(_$SentTransferTypeDtoEnumMap, json['type']),
      baasTransferId: json['baasTransferId'] as String?,
      senderBank: json['senderBank'] as String?,
      accountId: json['accountId'] as int,
      orderDate: DateTime.parse(json['orderDate'] as String),
      valueDate: json['valueDate'] == null
          ? null
          : DateTime.parse(json['valueDate'] as String),
      concept: json['concept'] as String,
      settlementAmount: (json['settlementAmount'] as num?)?.toDouble(),
      settlementCurrencyCode: json['settlementCurrencyCode'] as String?,
      foreignExchange: (json['foreignExchange'] as num?)?.toDouble(),
      exchangeValue: (json['exchangeValue'] as num?)?.toDouble(),
      detailOfCharges: json['detailOfCharges'] as String?,
      instructedAmount: (json['instructedAmount'] as num).toDouble(),
      instructedCurrencyCode: json['instructedCurrencyCode'] as String,
      status: $enumDecode(_$SentTransferStatusTypeDtoEnumMap, json['status']),
      baasMovementId: json['baasMovementId'] as String,
      concept2: json['concept2'] as String?,
      movementId: json['movementId'] as int?,
      sentTransferId: json['sentTransferId'] as int?,
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
      'type': _$SentTransferTypeDtoEnumMap[instance.type]!,
      'baasTransferId': instance.baasTransferId,
      'senderBank': instance.senderBank,
      'accountId': instance.accountId,
      'orderDate': instance.orderDate.toIso8601String(),
      'valueDate': instance.valueDate?.toIso8601String(),
      'concept': instance.concept,
      'settlementAmount': instance.settlementAmount,
      'settlementCurrencyCode': instance.settlementCurrencyCode,
      'foreignExchange': instance.foreignExchange,
      'exchangeValue': instance.exchangeValue,
      'detailOfCharges': instance.detailOfCharges,
      'instructedAmount': instance.instructedAmount,
      'instructedCurrencyCode': instance.instructedCurrencyCode,
      'status': _$SentTransferStatusTypeDtoEnumMap[instance.status]!,
      'baasMovementId': instance.baasMovementId,
      'concept2': instance.concept2,
      'movementId': instance.movementId,
      'sentTransferId': instance.sentTransferId,
      'routingNumber': instance.routingNumber,
      'beneficiaryBank': instance.beneficiaryBank,
      'beneficiaryName': instance.beneficiaryName,
      'transferDate': instance.transferDate?.toIso8601String(),
    };

const _$SentTransferTypeDtoEnumMap = {
  SentTransferTypeDto.transfer: 'TRANSFER',
  SentTransferTypeDto.between_my_accounts: 'BETWEEN_MY_ACCOUNTS',
  SentTransferTypeDto.inmediate: 'INMEDIATE',
  SentTransferTypeDto.urgent: 'URGENT',
  SentTransferTypeDto.sepa: 'SEPA',
  SentTransferTypeDto.internal: 'INTERNAL',
  SentTransferTypeDto.international: 'INTERNATIONAL',
};

const _$SentTransferStatusTypeDtoEnumMap = {
  SentTransferStatusTypeDto.sent: 'SENT',
  SentTransferStatusTypeDto.received: 'RECEIVED',
  SentTransferStatusTypeDto.cancelled: 'CANCELLED',
  SentTransferStatusTypeDto.pending: 'PENDING',
  SentTransferStatusTypeDto.rejected: 'REJECTED',
};
