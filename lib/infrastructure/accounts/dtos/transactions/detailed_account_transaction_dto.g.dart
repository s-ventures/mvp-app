// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_account_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedAccountTransactionDtoImpl
    _$$DetailedAccountTransactionDtoImplFromJson(Map<String, dynamic> json) =>
        _$DetailedAccountTransactionDtoImpl(
          movementId: json['movementId'] as int,
          postingDate:
              const DateConverter().fromJson(json['postingDate'] as String),
          valueDate:
              const DateConverter().fromJson(json['valueDate'] as String),
          type: $enumDecode(_$AccountTransactionTypeDtoEnumMap, json['type']),
          amount: (json['amount'] as num).toDouble(),
          currencyCode: json['currencyCode'] as String,
          description: json['description'] as String,
          analyticsCategory: json['analyticsCategory'] as String?,
          userComments: json['userComments'] as String?,
          userCategory: json['userCategory'] as String?,
          placeId: json['placeId'] as String?,
          accountId: json['accountId'] as int,
          endBalance: (json['endBalance'] as num).toDouble(),
          creditDebit: $enumDecode(
              _$AccountTransactionCreditDebitDtoEnumMap, json['creditDebit']),
          detailFields: json['detailFields'] as String?,
          visible: json['visible'] as bool,
          bankReceipt: json['bankReceipt'] as bool,
          originBranch: json['originBranch'] as String,
          originalAmount: (json['originalAmount'] as num).toDouble(),
          originalCurrencyCode: json['originalCurrencyCode'] as String,
          assignmentDate:
              const DateConverter().fromJson(json['assignmentDate'] as String),
          attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) =>
                  MovementAttachmentDto.fromJson(e as Map<String, dynamic>))
              .toList(),
          productType:
              $enumDecode(_$ProductTypeDtoEnumMap, json['productType']),
        );

Map<String, dynamic> _$$DetailedAccountTransactionDtoImplToJson(
        _$DetailedAccountTransactionDtoImpl instance) =>
    <String, dynamic>{
      'movementId': instance.movementId,
      'postingDate': const DateConverter().toJson(instance.postingDate),
      'valueDate': const DateConverter().toJson(instance.valueDate),
      'type': _$AccountTransactionTypeDtoEnumMap[instance.type]!,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'description': instance.description,
      'analyticsCategory': instance.analyticsCategory,
      'userComments': instance.userComments,
      'userCategory': instance.userCategory,
      'placeId': instance.placeId,
      'accountId': instance.accountId,
      'endBalance': instance.endBalance,
      'creditDebit':
          _$AccountTransactionCreditDebitDtoEnumMap[instance.creditDebit]!,
      'detailFields': instance.detailFields,
      'visible': instance.visible,
      'bankReceipt': instance.bankReceipt,
      'originBranch': instance.originBranch,
      'originalAmount': instance.originalAmount,
      'originalCurrencyCode': instance.originalCurrencyCode,
      'assignmentDate': const DateConverter().toJson(instance.assignmentDate),
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'productType': _$ProductTypeDtoEnumMap[instance.productType]!,
    };

const _$AccountTransactionTypeDtoEnumMap = {
  AccountTransactionTypeDto.other: 'OTHER',
  AccountTransactionTypeDto.accounts: 'ACCOUNTS',
  AccountTransactionTypeDto.transfer: 'TRANSFER',
  AccountTransactionTypeDto.tax: 'TAX',
  AccountTransactionTypeDto.debit: 'DEBIT',
  AccountTransactionTypeDto.directDebit: 'DIRECT_DEBIT',
  AccountTransactionTypeDto.card: 'CARD',
  AccountTransactionTypeDto.cashWithdrawal: 'CASH_WITHDRAWAL',
  AccountTransactionTypeDto.cashIncome: 'CASH_INCOME',
  AccountTransactionTypeDto.checkIncome: 'CHECK_INCOME',
  AccountTransactionTypeDto.checkIssue: 'CHECK_ISSUE',
  AccountTransactionTypeDto.feesAndCommissions: 'FEES_AND_COMMISSIONS',
  AccountTransactionTypeDto.bankWithholding: 'BANK_WITHHOLDING',
  AccountTransactionTypeDto.interestPayment: 'INTEREST_PAYMENT',
  AccountTransactionTypeDto.loanPayment: 'LOAN_PAYMENT',
  AccountTransactionTypeDto.loanAmortization: 'LOAN_AMORTIZATION',
  AccountTransactionTypeDto.transferIn: 'TRANSFER_IN',
  AccountTransactionTypeDto.transferOut: 'TRANSFER_OUT',
  AccountTransactionTypeDto.periodicTransfer: 'PERIODIC_TRANSFER',
};

const _$AccountTransactionCreditDebitDtoEnumMap = {
  AccountTransactionCreditDebitDto.credit: 'CREDIT',
  AccountTransactionCreditDebitDto.debit: 'DEBIT',
};

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.accounts: 'ACCOUNTS',
  ProductTypeDto.cards: 'CARDS',
  ProductTypeDto.aggregatedAccounts: 'AGGREGATED_ACCOUNTS',
  ProductTypeDto.unknown: 'UNKNOWN',
};
