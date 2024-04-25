// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "periodicTransferId": 0,
//   "accountId": [
//     0
//   ],
//   "beneficiaryAccount": "string",
//   "beneficiaryName": "string",
//   "beneficiaryAddress": "string",
//   "beneficiaryCountryCode2char": "string",
//   "amountFrom": 0,
//   "amountTo": 0,
//   "currencyCode": "string",
//   "startDateFrom": "2024-04-17",
//   "startDateTo": "2024-04-17",
//   "endDateFrom": "2024-04-17",
//   "endDateTo": "2024-04-17",
//   "frecuency": "DAILY",
//   "status": "SENT"
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_frecuency_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_order_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/periodic_orders/entities/periodic_orders_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/periodic_order_frecuency_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/periodic_orders/dtos/periodic_order_status_type_dto.dart';

part 'periodic_orders_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class PeriodicOrdersFilterDto extends PaginatedRequest {
  PeriodicOrdersFilterDto({
    this.periodicTransferId,
    this.accountId,
    this.beneficiaryAccount,
    this.beneficiaryName,
    this.beneficiaryAddress,
    this.beneficiaryCountryCode2char,
    this.amountFrom,
    this.amountTo,
    this.currencyCode,
    this.startDateFrom,
    this.startDateTo,
    this.endDateFrom,
    this.endDateTo,
    this.frecuency,
    this.status,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory PeriodicOrdersFilterDto.fromDomain({
    required PeriodicOrdersFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return PeriodicOrdersFilterDto(
      periodicTransferId: filter.id?.toInt(),
      accountId: filter.accountIds,
      beneficiaryAccount: filter.beneficiaryAccount,
      beneficiaryName: filter.beneficiaryName,
      beneficiaryAddress: filter.beneficiaryAddress,
      beneficiaryCountryCode2char: filter.beneficiaryCountryCode2char,
      amountFrom: filter.amountFrom,
      amountTo: filter.amountTo,
      currencyCode: filter.currencyCode,
      startDateFrom: filter.startDateFrom,
      startDateTo: filter.startDateTo,
      endDateFrom: filter.endDateFrom,
      endDateTo: filter.endDateTo,
      frecuency: filter.frecuency?.toDto(),
      status: filter.status?.toDto(),
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory PeriodicOrdersFilterDto.fromJson(Map<String, dynamic> json) =>
      _$PeriodicOrdersFilterDtoFromJson(json);

  final int? periodicTransferId;
  final List<int>? accountId;
  final String? beneficiaryAccount;
  final String? beneficiaryName;
  final String? beneficiaryAddress;
  final String? beneficiaryCountryCode2char;
  final double? amountFrom;
  final double? amountTo;
  final String? currencyCode;
  @DateConverter()
  final DateTime? startDateFrom;
  @DateConverter()
  final DateTime? startDateTo;
  @DateConverter()
  final DateTime? endDateFrom;
  @DateConverter()
  final DateTime? endDateTo;
  final PeriodicOrderFrecuencyTypeDto? frecuency;
  final PeriodicOrderStatusTypeDto? status;

  @override
  Map<String, dynamic> toJson() => _$PeriodicOrdersFilterDtoToJson(this);
}
