import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/value_failure.dart';

class DifferentLength<T> extends ValueFailure<T> {
  DifferentLength({
    required super.failedValue,
    required this.length,
  });
  final int length;
}

class ExceedingLength<T> extends ValueFailure<T> {
  ExceedingLength({
    required super.failedValue,
    required this.max,
  });
  final int max;
}

class LengthTooShort<T> extends ValueFailure<T> {
  LengthTooShort({
    required super.failedValue,
    required this.length,
  });
  final int length;
}

class Empty<T> extends ValueFailure<T> {
  Empty({required super.failedValue});
}

class Multiline<T> extends ValueFailure<T> {
  Multiline({required super.failedValue});
}

class NumberTooLarge<T> extends ValueFailure<T> {
  NumberTooLarge({
    required super.failedValue,
    required this.max,
  });
  final num max;
}

class NotExactLength<T> extends ValueFailure<T> {
  NotExactLength({
    required super.failedValue,
    required this.length,
  });

  final int length;
}
