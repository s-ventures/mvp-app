import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';

part 'overview_quotes.freezed.dart';

@freezed
class OverviewQuotes with _$OverviewQuotes {
  const factory OverviewQuotes({
    required OverviewSegmentPeriod requestedSegmentPeriod,
    required double totalAmountOfQuotes,
    required double totalAmountOfAcceptedQuotes,
    required int totalNumberOfSentQuotes,
    required int totalNumberOfAcceptedQuotes,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewQuotes;
}
