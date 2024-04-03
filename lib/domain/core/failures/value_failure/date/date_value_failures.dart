import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/value_failure.dart';

class InvalidDate<T> extends ValueFailure<T> {
  InvalidDate({required super.failedValue});
}
