import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/date/date_value_failures.dart';
import 'package:manifiesto_mvp_app/domain/core/failures/value_failure/length/length_value_failures.dart';

Either<DifferentLength<String>, String> validateStringLength(
  String input,
  int length,
) {
  if (input.length == length) {
    return right(input);
  } else {
    return left(
      DifferentLength(
        failedValue: input,
        length: length,
      ),
    );
  }
}

Either<ExceedingLength<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ExceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<Empty<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(Empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<Multiline<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(Multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<InvalidDate<DateTime>, DateTime> validateDate(DateTime input) {
  if (input.isBefore(DateTime.now())) {
    return right(input);
  } else {
    return left(InvalidDate(failedValue: input));
  }
}

Either<NumberTooLarge<double>, double> validateDoubleInRange(
  double input, {
  required double min,
  required double max,
}) {
  if (input >= min && input <= max) {
    return right(input);
  } else {
    return left(
      NumberTooLarge(
        failedValue: input,
        max: max,
      ),
    );
  }
}
