import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_expenses_failure.freezed.dart';

@freezed
class OverviewExpensesFailure with _$OverviewExpensesFailure {
  const factory OverviewExpensesFailure.unexpected() = _Unexpected;
}
