enum CardType {
  debit('Débito'),
  credit('Crédito'),
  virtual('Virtual');

  const CardType(this.name);

  final String name;
}
