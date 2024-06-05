import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/overview_quotes.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';

// {
//   "requestedSegmentPeriod": "MONTHLY",
//   "totalAmountOfQuotes": 0,
//   "totalAmountOfAcceptedQuotes": 0,
//   "totalNumberOfSentQuotes": 0,
//   "totalNumberOfAcceptedQuotes": 0,
//   "percentageChangeInBudgetAmount": 0
// }

part 'overview_quotes_dto.freezed.dart';
part 'overview_quotes_dto.g.dart';

@freezed
class OverviewQuotesDto with _$OverviewQuotesDto {
  const factory OverviewQuotesDto({
    required OverviewSegmentPeriodDto requestedSegmentPeriod,
    required double totalAmountOfQuotes,
    required double totalAmountOfAcceptedQuotes,
    required int totalNumberOfSentQuotes,
    required int totalNumberOfAcceptedQuotes,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewQuotesDto;

  factory OverviewQuotesDto.fromJson(Map<String, dynamic> json) =>
      _$OverviewQuotesDtoFromJson(json);
}

extension OverviewQuotesDtoX on OverviewQuotesDto {
  OverviewQuotes toDomain() {
    return OverviewQuotes(
      requestedSegmentPeriod: requestedSegmentPeriod.toDomain(),
      totalAmountOfQuotes: totalAmountOfQuotes,
      totalAmountOfAcceptedQuotes: totalAmountOfAcceptedQuotes,
      totalNumberOfSentQuotes: totalNumberOfSentQuotes,
      totalNumberOfAcceptedQuotes: totalNumberOfAcceptedQuotes,
      percentageChangeInBudgetAmount: percentageChangeInBudgetAmount,
    );
  }
}
