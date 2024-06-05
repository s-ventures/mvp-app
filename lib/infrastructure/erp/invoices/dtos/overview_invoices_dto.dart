import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/overview_invoices.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';

// {
//   "requestedSegmentPeriod": "MONTHLY",
//   "totalAmountOfInvoices": 0,
//   "totalAmountOfAcceptedInvoices": 0,
//   "totalNumberOfSentInvoices": 0,
//   "totalNumberOfAcceptedInvoices": 0,
//   "percentageChangeInBudgetAmount": 0
// }

part 'overview_invoices_dto.freezed.dart';
part 'overview_invoices_dto.g.dart';

@freezed
class OverviewInvoicesDto with _$OverviewInvoicesDto {
  const factory OverviewInvoicesDto({
    required OverviewSegmentPeriodDto requestedSegmentPeriod,
    required double totalAmountOfInvoices,
    required double totalAmountOfAcceptedInvoices,
    required int totalNumberOfSentInvoices,
    required int totalNumberOfAcceptedInvoices,
    required double percentageChangeInBudgetAmount,
  }) = _OverviewInvoicesDto;

  factory OverviewInvoicesDto.fromJson(Map<String, dynamic> json) =>
      _$OverviewInvoicesDtoFromJson(json);
}

extension OverviewInvoicesDtoX on OverviewInvoicesDto {
  OverviewInvoices toDomain() {
    return OverviewInvoices(
      requestedSegmentPeriod: requestedSegmentPeriod.toDomain(),
      totalAmountOfInvoices: totalAmountOfInvoices,
      totalAmountOfAcceptedInvoices: totalAmountOfAcceptedInvoices,
      totalNumberOfSentInvoices: totalNumberOfSentInvoices,
      totalNumberOfAcceptedInvoices: totalNumberOfAcceptedInvoices,
      percentageChangeInBudgetAmount: percentageChangeInBudgetAmount,
    );
  }
}
