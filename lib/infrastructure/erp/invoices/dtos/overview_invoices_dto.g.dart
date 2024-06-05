// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_invoices_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverviewInvoicesDtoImpl _$$OverviewInvoicesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OverviewInvoicesDtoImpl(
      requestedSegmentPeriod: $enumDecode(
          _$OverviewSegmentPeriodDtoEnumMap, json['requestedSegmentPeriod']),
      totalAmountOfInvoices: (json['totalAmountOfInvoices'] as num).toDouble(),
      totalAmountOfAcceptedInvoices:
          (json['totalAmountOfAcceptedInvoices'] as num).toDouble(),
      totalNumberOfSentInvoices:
          (json['totalNumberOfSentInvoices'] as num).toInt(),
      totalNumberOfAcceptedInvoices:
          (json['totalNumberOfAcceptedInvoices'] as num).toInt(),
      percentageChangeInBudgetAmount:
          (json['percentageChangeInBudgetAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$OverviewInvoicesDtoImplToJson(
        _$OverviewInvoicesDtoImpl instance) =>
    <String, dynamic>{
      'requestedSegmentPeriod':
          _$OverviewSegmentPeriodDtoEnumMap[instance.requestedSegmentPeriod]!,
      'totalAmountOfInvoices': instance.totalAmountOfInvoices,
      'totalAmountOfAcceptedInvoices': instance.totalAmountOfAcceptedInvoices,
      'totalNumberOfSentInvoices': instance.totalNumberOfSentInvoices,
      'totalNumberOfAcceptedInvoices': instance.totalNumberOfAcceptedInvoices,
      'percentageChangeInBudgetAmount': instance.percentageChangeInBudgetAmount,
    };

const _$OverviewSegmentPeriodDtoEnumMap = {
  OverviewSegmentPeriodDto.monthly: 'MONTHLY',
  OverviewSegmentPeriodDto.quarterly: 'QUARTERLY',
  OverviewSegmentPeriodDto.yearly: 'YEARLY',
};
