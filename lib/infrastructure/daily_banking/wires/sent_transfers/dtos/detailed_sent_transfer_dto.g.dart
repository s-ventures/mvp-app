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
      accountId: (json['accountId'] as num).toInt(),
      customerId: (json['customerId'] as num).toInt(),
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
          _$TransferDetailOfChargesDtoEnumMap, json['detailsOfCharges']),
      instructedAmount: (json['instructedAmount'] as num?)?.toDouble(),
      instructedCurrencyCode: json['instructedCurrencyCode'] as String?,
      status: $enumDecode(_$TransferStatusTypeDtoEnumMap, json['status']),
      baasMovementId: json['baasMovementId'] as String?,
      concept2: json['concept2'] as String?,
      movementId: (json['movementId'] as num?)?.toInt(),
      executionDate: json['executionDate'] == null
          ? null
          : DateTime.parse(json['executionDate'] as String),
      senderAccount: json['senderAccount'] as String?,
      sentTransferId: (json['sentTransferId'] as num).toInt(),
      periodicTransfer: json['periodicTransfer'] as bool,
      routingNumber: json['routingNumber'] as String?,
      beneficiaryBank: json['beneficiaryBank'] as String?,
      beneficiaryAccount: json['beneficiaryAccount'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      transferDate: json['transferDate'] == null
          ? null
          : DateTime.parse(json['transferDate'] as String),
      referenceDC: json['referenceDC'] as String?,
      accountNumber: json['accountNumber'] as String?,
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
          _$TransferDetailOfChargesDtoEnumMap[instance.detailsOfCharges],
      'instructedAmount': instance.instructedAmount,
      'instructedCurrencyCode': instance.instructedCurrencyCode,
      'status': _$TransferStatusTypeDtoEnumMap[instance.status]!,
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
      'accountNumber': instance.accountNumber,
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
