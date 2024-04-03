import 'package:intl/intl.dart';

extension DateFormatX on DateTime? {
  String? formatToDayMonthYear() {
    final date = this;
    if (date == null) return null;
    return DateFormat('dd/MM/yyyy').format(date);
  }
}
