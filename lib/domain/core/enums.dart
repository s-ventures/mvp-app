enum Currency {
  euro('€'),
  dollar(r'$'),
  pound('£');

  const Currency(this.symbol);

  final String symbol;
}

enum Periodicity {
  daily,
  weekly,
  biWeekly,
  monthly,
  quarterly,
  yearly,
}
