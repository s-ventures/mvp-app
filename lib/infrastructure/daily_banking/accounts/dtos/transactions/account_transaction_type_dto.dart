// [ OTHER, ACCOUNTS, TRANSFER, TAX, DEBIT, DIRECT_DEBIT, CARD, CASH_WITHDRAWAL, CASH_INCOME, CHECK_INCOME, CHECK_ISSUE, FEES_AND_COMMISSIONS, BANK_WITHHOLDING, INTEREST_PAYMENT, LOAN_PAYMENT, LOAN_AMORTIZATION, TRANSFER_IN, TRANSFER_OUT, PERIODIC_TRANSFER ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transaction_type.dart';

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
        AccountTransactionTypeDto.transferIn =>
          AccountTransactionType.transferIn,
        AccountTransactionTypeDto.tax => AccountTransactionType.tax,
        AccountTransactionTypeDto.debit => AccountTransactionType.debit,
        AccountTransactionTypeDto.directDebit =>
          AccountTransactionType.directDebit,
        AccountTransactionTypeDto.card => AccountTransactionType.card,
        AccountTransactionTypeDto.transferOut =>
          AccountTransactionType.transferOut,

        // Other
        AccountTransactionTypeDto.cashWithdrawal ||
        AccountTransactionTypeDto.checkIssue ||
        AccountTransactionTypeDto.feesAndCommissions ||
        AccountTransactionTypeDto.bankWithholding ||
        AccountTransactionTypeDto.interestPayment ||
        AccountTransactionTypeDto.loanPayment ||
        AccountTransactionTypeDto.loanAmortization ||
        AccountTransactionTypeDto.periodicTransfer ||
        AccountTransactionTypeDto.cashIncome ||
        AccountTransactionTypeDto.checkIncome ||
        AccountTransactionTypeDto.accounts ||
        AccountTransactionTypeDto.other ||
        AccountTransactionTypeDto.transfer =>
          AccountTransactionType.other,
      };
}
