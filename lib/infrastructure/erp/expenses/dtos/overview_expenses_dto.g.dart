// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_expenses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewExpensesDtoImpl _$$OverviewExpensesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OverviewExpensesDtoImpl(
      requestedSegmentPeriod: $enumDecode(
          _$OverviewSegmentPeriodDtoEnumMap, json['requestedSegmentPeriod']),
      totalAmountOfExpenses: (json['totalAmountOfExpenses'] as num).toDouble(),
      totalAmountOfAcceptedExpenses:
          (json['totalAmountOfAcceptedExpenses'] as num).toDouble(),
      totalNumberOfSentExpenses: json['totalNumberOfSentExpenses'] as int,
      totalNumberOfAcceptedExpenses:
          json['totalNumberOfAcceptedExpenses'] as int,
      percentageChangeInBudgetAmount:
          (json['percentageChangeInBudgetAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$OverviewExpensesDtoImplToJson(
        _$OverviewExpensesDtoImpl instance) =>
    <String, dynamic>{
      'requestedSegmentPeriod':
          _$OverviewSegmentPeriodDtoEnumMap[instance.requestedSegmentPeriod]!,
      'totalAmountOfExpenses': instance.totalAmountOfExpenses,
      'totalAmountOfAcceptedExpenses': instance.totalAmountOfAcceptedExpenses,
      'totalNumberOfSentExpenses': instance.totalNumberOfSentExpenses,
      'totalNumberOfAcceptedExpenses': instance.totalNumberOfAcceptedExpenses,
      'percentageChangeInBudgetAmount': instance.percentageChangeInBudgetAmount,
    };

const _$OverviewSegmentPeriodDtoEnumMap = {
  OverviewSegmentPeriodDto.monthly: 'MONTHLY',
  OverviewSegmentPeriodDto.quarterly: 'QUARTERLY',
  OverviewSegmentPeriodDto.yearly: 'YEARLY',
};
