enum AccountTransactionCreditDebit {
  all('Todos'),
  credit('Ingresos'),
  debit('Gastos');

  const AccountTransactionCreditDebit(this.name);

  final String name;
}
