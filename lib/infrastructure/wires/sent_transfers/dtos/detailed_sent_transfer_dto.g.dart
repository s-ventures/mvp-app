// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_sent_transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedSentTransferDtoImpl _$$DetailedSentTransferDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedSentTransferDtoImpl(
      type: $enumDecode(_$SentTransferTypeDtoEnumMap, json['type']),
      baasTransferId: json['baasTransferId'] as String?,
      bankOperationCode: json['bankOperationCode'] as String?,
      senderBank: json['senderBank'] as String?,
      accountId: json['accountId'] as int,
      customerId: json['customerId'] as int,
      orderDate: DateTime.parse(json['orderDate'] as String),
      valueDate: json['valueDate'] == null
          ? null
          : DateTime.parse(json['valueDate'] as String),
      concept: json['concept'] as String,
      settlementAmount: (json['settlementAmount'] as num?)?.toDouble(),
      settlementCurrencyCode: json['settlementCurrencyCode'] as String?,
      foreignExchange: (json['foreignExchange'] as num?)?.toDouble(),
      exchangeValue: (json['exchangeValue'] as num?)?.toDouble(),
      detailsOfCharges: $enumDecodeNullable(
          _$SentTransferDetailOfChargesDtoEnumMap, json['detailsOfCharges']),
      instructedAmount: (json['instructedAmount'] as num?)?.toDouble(),
      instructedCurrencyCode: json['instructedCurrencyCode'] as String?,
      status: $enumDecode(_$SentTransferStatusTypeDtoEnumMap, json['status']),
      baasMovementId: json['baasMovementId'] as String?,
      concept2: json['concept2'] as String?,
      movementId: json['movementId'] as int?,
      executionDate: json['executionDate'] == null
          ? null
          : DateTime.parse(json['executionDate'] as String),
      senderAccount: json['senderAccount'] as String?,
      sentTransferId: json['sentTransferId'] as int,
      periodicTransfer: json['periodicTransfer'] as bool,
      routingNumber: json['routingNumber'] as String?,
      beneficiaryBank: json['beneficiaryBank'] as String?,
      beneficiaryAccount: json['beneficiaryAccount'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      transferDate: json['transferDate'] == null
          ? null
          : DateTime.parse(json['transferDate'] as String),
      referenceDC: json['referenceDC'] as String?,
    );

Map<String, dynamic> _$$DetailedSentTransferDtoImplToJson(
        _$DetailedSentTransferDtoImpl instance) =>
    <String, dynamic>{
      'type': _$SentTransferTypeDtoEnumMap[instance.type]!,
      'baasTransferId': instance.baasTransferId,
      'bankOperationCode': instance.bankOperationCode,
      'senderBank': instance.senderBank,
      'accountId': instance.accountId,
      'customerId': instance.customerId,
      'orderDate': instance.orderDate.toIso8601String(),
      'valueDate': instance.valueDate?.toIso8601String(),
      'concept': instance.concept,
      'settlementAmount': instance.settlementAmount,
      'settlementCurrencyCode': instance.settlementCurrencyCode,
      'foreignExchange': instance.foreignExchange,
      'exchangeValue': instance.exchangeValue,
      'detailsOfCharges':
          _$SentTransferDetailOfChargesDtoEnumMap[instance.detailsOfCharges],
      'instructedAmount': instance.instructedAmount,
      'instructedCurrencyCode': instance.instructedCurrencyCode,
      'status': _$SentTransferStatusTypeDtoEnumMap[instance.status]!,
      'baasMovementId': instance.baasMovementId,
      'concept2': instance.concept2,
      'movementId': instance.movementId,
      'executionDate': instance.executionDate?.toIso8601String(),
      'senderAccount': instance.senderAccount,
      'sentTransferId': instance.sentTransferId,
      'periodicTransfer': instance.periodicTransfer,
      'routingNumber': instance.routingNumber,
      'beneficiaryBank': instance.beneficiaryBank,
      'beneficiaryAccount': instance.beneficiaryAccount,
      'beneficiaryName': instance.beneficiaryName,
      'transferDate': instance.transferDate?.toIso8601String(),
      'referenceDC': instance.referenceDC,
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

const _$SentTransferDetailOfChargesDtoEnumMap = {
  SentTransferDetailOfChargesDto.sha: 'SHA',
  SentTransferDetailOfChargesDto.our: 'OUR',
  SentTransferDetailOfChargesDto.ben: 'BEN',
};

const _$SentTransferStatusTypeDtoEnumMap = {
  SentTransferStatusTypeDto.sent: 'SENT',
  SentTransferStatusTypeDto.received: 'RECEIVED',
  SentTransferStatusTypeDto.cancelled: 'CANCELLED',
  SentTransferStatusTypeDto.pending: 'PENDING',
  SentTransferStatusTypeDto.rejected: 'REJECTED',
};
