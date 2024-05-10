// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "insuranceId": [
//     0
//   ],
//   "policy": "string",
//   "certificateNumber": "string",
//   "createDateFrom": "2024-04-24",
//   "createDateTo": "2024-04-24",
//   "status": "string",
//   "description": "string",
//   "amountFrom": 0,
//   "amountTo": 0,
//   "lastInvoiceAmountFrom": 0,
//   "lastInvoiceAmountTo": 0,
//   "paymentPeriodicity": "MONTHLY",
//   "iaasBranch": "string"
// }

// ignore_for_file: invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/insurance/policies/entities/policies_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/insurance/policies/dtos/policy_payment_periodicity_dto.dart';

part 'policies_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class PoliciesFilterDto extends PaginatedRequest {
  PoliciesFilterDto({
    this.insuranceId,
    this.policy,
    this.certificateNumber,
    this.createDateFrom,
    this.createDateTo,
    this.status,
    this.description,
    this.amountFrom,
    this.amountTo,
    this.lastInvoiceAmountFrom,
    this.lastInvoiceAmountTo,
    this.paymentPeriodicity,
    this.iaasBranch,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory PoliciesFilterDto.fromDomain({
    required PoliciesFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return PoliciesFilterDto(
      createDateFrom: filter.createDateFrom,
      createDateTo: filter.createDateTo,
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
  }

  factory PoliciesFilterDto.fromJson(Map<String, dynamic> json) =>
      _$PoliciesFilterDtoFromJson(json);

  final List<int>? insuranceId;
  final String? policy;
  final String? certificateNumber;
  @DateConverter()
  final DateTime? createDateFrom;
  @DateConverter()
  final DateTime? createDateTo;
  final String? status;
  final String? description;
  final double? amountFrom;
  final double? amountTo;
  final double? lastInvoiceAmountFrom;
  final double? lastInvoiceAmountTo;
  final PolicyPaymentPeriodicityDto? paymentPeriodicity;
  final String? iaasBranch;
  @override
  Map<String, dynamic> toJson() => _$PoliciesFilterDtoToJson(this);
}
