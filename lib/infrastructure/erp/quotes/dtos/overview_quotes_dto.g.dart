// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_quotes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewQuotesDtoImpl _$$OverviewQuotesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OverviewQuotesDtoImpl(
      requestedSegmentPeriod: $enumDecode(
          _$OverviewSegmentPeriodDtoEnumMap, json['requestedSegmentPeriod']),
      totalAmountOfQuotes: (json['totalAmountOfQuotes'] as num).toDouble(),
      totalAmountOfAcceptedQuotes:
          (json['totalAmountOfAcceptedQuotes'] as num).toDouble(),
      totalNumberOfSentQuotes: json['totalNumberOfSentQuotes'] as int,
      totalNumberOfAcceptedQuotes: json['totalNumberOfAcceptedQuotes'] as int,
      percentageChangeInBudgetAmount:
          (json['percentageChangeInBudgetAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$OverviewQuotesDtoImplToJson(
        _$OverviewQuotesDtoImpl instance) =>
    <String, dynamic>{
      'requestedSegmentPeriod':
          _$OverviewSegmentPeriodDtoEnumMap[instance.requestedSegmentPeriod]!,
      'totalAmountOfQuotes': instance.totalAmountOfQuotes,
      'totalAmountOfAcceptedQuotes': instance.totalAmountOfAcceptedQuotes,
      'totalNumberOfSentQuotes': instance.totalNumberOfSentQuotes,
      'totalNumberOfAcceptedQuotes': instance.totalNumberOfAcceptedQuotes,
      'percentageChangeInBudgetAmount': instance.percentageChangeInBudgetAmount,
    };

const _$OverviewSegmentPeriodDtoEnumMap = {
  OverviewSegmentPeriodDto.monthly: 'MONTHLY',
  OverviewSegmentPeriodDto.quarterly: 'QUARTERLY',
  OverviewSegmentPeriodDto.yearly: 'YEARLY',
};
