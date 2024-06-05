import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateConverter implements JsonConverter<DateTime, String> {
  const DateConverter();

  @override
  DateTime fromJson(String dateIso) => DateFormat('yyyy-MM-dd').parse(dateIso);

  @override
  String toJson(DateTime date) => DateFormat('yyyy-MM-dd').format(date);
}
