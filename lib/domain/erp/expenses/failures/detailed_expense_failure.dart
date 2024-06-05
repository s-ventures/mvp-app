import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_expense_failure.freezed.dart';

@freezed
class DetailedExpenseFailure with _$DetailedExpenseFailure {
  const factory DetailedExpenseFailure.unexpected() = _Unexpected;
}
