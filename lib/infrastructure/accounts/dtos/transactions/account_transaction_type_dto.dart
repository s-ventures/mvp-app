// [ OTHER, ACCOUNTS, TRANSFER, TAX, DEBIT, DIRECT_DEBIT, CARD, CASH_WITHDRAWAL, CASH_INCOME, CHECK_INCOME, CHECK_ISSUE, FEES_AND_COMMISSIONS, BANK_WITHHOLDING, INTEREST_PAYMENT, LOAN_PAYMENT, LOAN_AMORTIZATION, TRANSFER_IN, TRANSFER_OUT, PERIODIC_TRANSFER ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum AccountTransactionTypeDto {
  other,
  accounts,
  transfer,
  tax,
  debit,
  directDebit,
  card,
  cashWithdrawal,
  cashIncome,
  checkIncome,
  checkIssue,
  feesAndCommissions,
  bankWithholding,
  interestPayment,
  loanPayment,
  loanAmortization,
  transferIn,
  transferOut,
  periodicTransfer,
}

extension AccountTransactionTypeDtoX on AccountTransactionTypeDto {
  AccountTransactionType toDomain() => switch (this) {
        // Income
        AccountTransactionTypeDto.cashIncome ||
        AccountTransactionTypeDto.checkIncome ||
        AccountTransactionTypeDto.transferIn =>
          AccountTransactionType.income,

        // Expense
        AccountTransactionTypeDto.tax ||
        AccountTransactionTypeDto.debit ||
        AccountTransactionTypeDto.directDebit ||
        AccountTransactionTypeDto.card ||
        AccountTransactionTypeDto.cashWithdrawal ||
        AccountTransactionTypeDto.checkIssue ||
        AccountTransactionTypeDto.feesAndCommissions ||
        AccountTransactionTypeDto.bankWithholding ||
        AccountTransactionTypeDto.interestPayment ||
        AccountTransactionTypeDto.loanPayment ||
        AccountTransactionTypeDto.loanAmortization ||
        AccountTransactionTypeDto.periodicTransfer ||
        AccountTransactionTypeDto.transferOut =>
          AccountTransactionType.expense,

        // Other
        AccountTransactionTypeDto.other ||
        AccountTransactionTypeDto.accounts ||
        AccountTransactionTypeDto.transfer =>
          AccountTransactionType.other,
      };
}
