import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';

part 'overview_invoices.freezed.dart';

@freezed
class OverviewInvoices with _$OverviewInvoices {
  const factory OverviewInvoices({
    required OverviewSegmentPeriod requestedSegmentPeriod,
    required double totalAmountOfInvoices,
    required double totalAmountOfAcceptedInvoices,
    required int totalNumberOfSentInvoices,
    required int totalNumberOfAcceptedInvoices,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewInvoices;
}
