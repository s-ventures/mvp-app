import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';

part 'overview_expenses.freezed.dart';

@freezed
class OverviewExpenses with _$OverviewExpenses {
  const factory OverviewExpenses({
    required OverviewSegmentPeriod requestedSegmentPeriod,
    required double totalAmountOfExpenses,
    required double totalAmountOfAcceptedExpenses,
    required int totalNumberOfSentExpenses,
    required int totalNumberOfAcceptedExpenses,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewExpenses;
}
