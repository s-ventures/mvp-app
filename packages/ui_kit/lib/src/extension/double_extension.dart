import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toCurrency({String symbol = '€', bool plusSign = true}) {
    final formatter = NumberFormat('#,###.00', 'es_ES');
    final formattedValue = formatter.format(this);
    return '${isNegative ? '' : plusSign ? '+' : ''}$formattedValue $symbol';
  }
}
