enum AccountTransactionType {
  // cashIncome, checkIncome, transferIn
  income('Ingreso', ['cashIncome', 'checkIncome', 'transferIn']),

  // tax, debit, directDebit, card, cashWithdrawal, checkIssue, feesAndCommissions, bankWithholding, interestPayment, loanPayment, loanAmortization, periodicTransfer, transferOut
  expense(
    'Gasto',
    [
      'tax',
      'debit',
      'directDebit',
      'card',
      'cashWithdrawal',
      'checkIssue',
      'feesAndCommissions',
      'bankWithholding',
      'interestPayment',
      'loanPayment',
      'loanAmortization',
      'periodicTransfer',
      'transferOut',
    ],
  ),

  // Other
  other('', []);

  const AccountTransactionType(this.name, this.types);

  final String name;

  final List<String> types;
}
