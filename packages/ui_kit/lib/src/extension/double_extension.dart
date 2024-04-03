extension DoubleExtension on double {
  String toCurrency({String symbol = '€', bool plusSign = true}) {
    return '${isNegative ? '' : plusSign ? '+' : ''}${toStringAsFixed(2)} $symbol';
  }
}
