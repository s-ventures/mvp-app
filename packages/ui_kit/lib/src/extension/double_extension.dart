import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toCurrency({
    String symbol = '€',
    bool plusSign = true,
    bool showDecimals = true,
    bool showSymbol = true,
  }) {
    final formatter = NumberFormat(
      showDecimals ? '#,###.00' : '#,###',
      'es_ES',
    );
    final formattedValue = formatter.format(this);
    return '${isNegative ? '' : plusSign ? '+' : ''}$formattedValue ${showSymbol ? symbol : ''}';
  }
}
