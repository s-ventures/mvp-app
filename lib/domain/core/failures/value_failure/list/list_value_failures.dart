import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/value_failure.dart';

class ListTooLong<T> extends ValueFailure<T> {
  ListTooLong({
    required super.failedValue,
    required this.max,
  });
  final int max;
}
