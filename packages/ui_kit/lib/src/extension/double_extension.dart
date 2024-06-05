import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toCurrency({
    String symbol = '€',
    bool plusSign = true,
    bool showDecimals = true,
    bool showSymbol = true,
  }) {
    if (this == 0.0) {
      return '0,00 ${showSymbol ? symbol : ''}';
    }
    final formatter = NumberFormat(
      showDecimals ? '#,###.00' : '#,###',
      'es_ES',
    );
    final formattedValue = formatter.format(this);
    return '${isNegative ? '' : plusSign ? '+' : ''}$formattedValue ${showSymbol ? symbol : ''}';
  }
}
