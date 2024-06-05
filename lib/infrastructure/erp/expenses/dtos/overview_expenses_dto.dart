import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/overview_expenses.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';

// {
//   "requestedSegmentPeriod": "MONTHLY",
//   "totalAmountOfExpense": 0,
//   "totalAmountOfAcceptedExpense": 0,
//   "totalNumberOfSentExpense": 0,
//   "totalNumberOfAcceptedExpense": 0,
//   "percentageChangeInBudgetAmount": 0
// }

part 'overview_expenses_dto.freezed.dart';
part 'overview_expenses_dto.g.dart';

@freezed
class OverviewExpensesDto with _$OverviewExpensesDto {
  const factory OverviewExpensesDto({
    required OverviewSegmentPeriodDto requestedSegmentPeriod,
    required double totalAmountOfExpenses,
    required double totalAmountOfAcceptedExpenses,
    required int totalNumberOfSentExpenses,
    required int totalNumberOfAcceptedExpenses,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewExpensesDto;

  factory OverviewExpensesDto.fromJson(Map<String, dynamic> json) =>
      _$OverviewExpensesDtoFromJson(json);
}

extension OverviewExpensesDtoX on OverviewExpensesDto {
  OverviewExpenses toDomain() {
    return OverviewExpenses(
      requestedSegmentPeriod: requestedSegmentPeriod.toDomain(),
      totalAmountOfExpenses: totalAmountOfExpenses,
      totalAmountOfAcceptedExpenses: totalAmountOfAcceptedExpenses,
      totalNumberOfSentExpenses: totalNumberOfSentExpenses,
      totalNumberOfAcceptedExpenses: totalNumberOfAcceptedExpenses,
      percentageChangeInBudgetAmount: percentageChangeInBudgetAmount,
    );
  }
}
