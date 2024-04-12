enum CardTransactionCreditDebit {
  all('Todos'),
  credit('Ingresos'),
  debit('Gastos');

  const CardTransactionCreditDebit(this.name);

  final String name;
}
