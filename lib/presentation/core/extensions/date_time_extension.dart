import 'package:intl/intl.dart';

extension DateFormatX on DateTime? {
  String? formatToDayMonthYear() {
    final date = this;
    if (date == null) return null;
    return DateFormat('dd/MM/yyyy').format(date);
  }

  String? formatToTransactionDate() {
    final date = this;
    if (date == null) return null;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    final transactionDate = DateTime(date.year, date.month, date.day);

    if (transactionDate == today) {
      return 'Hoy';
    } else if (transactionDate == yesterday) {
      return 'Ayer';
    } else if (transactionDate.year == today.year) {
      return DateFormat('d MMMM').format(transactionDate);
    } else {
      return DateFormat('d MMMM yyyy').format(transactionDate);
    }
  }
}
