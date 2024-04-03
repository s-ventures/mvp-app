import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/common_interfaces.dart';
import 'package:manifiesto_mvp_app/domain/core/errors.dart';
import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/value_failure.dart';
import 'package:manifiesto_mvp_app/domain/core/value_validators.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (right) => right);
  }

  T getOrElse(T dflt) {
    return value.getOrElse((_) => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  // We cannot let a simple String be passed in.
  // This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(
      right(uniqueIdStr),
    );
  }

  const UniqueId._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  int toInt() => value.fold((l) => 0, (r) => int.tryParse(r) ?? 0);
}

class StringSingleLine extends ValueObject<String> {
  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class Date extends ValueObject<DateTime> {
  factory Date(DateTime input) {
    return Date._(
      validateDate(input),
    );
  }

  const Date._(this.value);

  @override
  final Either<ValueFailure<DateTime>, DateTime> value;
}
