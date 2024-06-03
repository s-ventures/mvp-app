import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_failure.freezed.dart';

@freezed
class ExpenseFailure with _$ExpenseFailure {
  const factory ExpenseFailure.unexpected() = _Unexpected;
}
