// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_account_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedAccountTransactionDtoImpl
    _$$SimplifiedAccountTransactionDtoImplFromJson(Map<String, dynamic> json) =>
        _$SimplifiedAccountTransactionDtoImpl(
          movementId: json['movementId'] as int,
          postingDate:
              const DateConverter().fromJson(json['postingDate'] as String),
          valueDate:
              const DateConverter().fromJson(json['valueDate'] as String),
          type: $enumDecode(_$AccountTransactionTypeDtoEnumMap, json['type']),
          amount: (json['amount'] as num).toDouble(),
          endBalance: (json['endBalance'] as num).toDouble(),
          currencyCode: json['currencyCode'] as String,
          description: json['description'] as String,
          analyticsCategory: json['analyticsCategory'] as String?,
          userCategory: json['userCategory'] as String?,
          accountId: json['accountId'] as int,
          creditDebit: $enumDecode(
              _$AccountTransactionCreditDebitDtoEnumMap, json['creditDebit']),
          originBranch: json['originBranch'] as String,
          productType:
              $enumDecode(_$ProductTypeDtoEnumMap, json['productType']),
        );

Map<String, dynamic> _$$SimplifiedAccountTransactionDtoImplToJson(
        _$SimplifiedAccountTransactionDtoImpl instance) =>
    <String, dynamic>{
      'movementId': instance.movementId,
      'postingDate': const DateConverter().toJson(instance.postingDate),
      'valueDate': const DateConverter().toJson(instance.valueDate),
      'type': _$AccountTransactionTypeDtoEnumMap[instance.type]!,
      'amount': instance.amount,
      'endBalance': instance.endBalance,
      'currencyCode': instance.currencyCode,
      'description': instance.description,
      'analyticsCategory': instance.analyticsCategory,
      'userCategory': instance.userCategory,
      'accountId': instance.accountId,
      'creditDebit':
          _$AccountTransactionCreditDebitDtoEnumMap[instance.creditDebit]!,
      'originBranch': instance.originBranch,
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
