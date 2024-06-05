// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "id": 0,
//   "stakeholderId": 0,
//   "createdDateFrom": "2024-05-21",
//   "createdDateTo": "2024-05-21",
//   "issueDateFrom": "2024-05-21",
//   "issueDateTo": "2024-05-21",
//   "totalAmountFrom": 0,
//   "totalAmountTo": 0,
//   "query": "string",
//   "status": "DRAFT"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_status_dto.dart';

part 'quotation_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class QuotationFilterDto extends PaginatedRequest {
  QuotationFilterDto({
    this.id,
    this.stakeholderId,
    this.createdDateFrom,
    this.createdDateTo,
    this.issueDateFrom,
    this.issueDateTo,
    this.totalAmountFrom,
    this.totalAmountTo,
    this.query,
    this.status,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory QuotationFilterDto.fromDomain({
    required QuotationFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return QuotationFilterDto(
      id: filter.id?.toInt(),
      stakeholderId: filter.stakeholderId?.toInt(),
      createdDateFrom: filter.createdDateFrom,
      createdDateTo: filter.createdDateTo,
      issueDateFrom: filter.issueDateFrom,
      issueDateTo: filter.issueDateTo,
      totalAmountFrom: filter.totalAmountFrom,
      totalAmountTo: filter.totalAmountTo,
      query: filter.query,
      status: filter.status?.toDto(),
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory QuotationFilterDto.fromJson(Map<String, dynamic> json) =>
      _$QuotationFilterDtoFromJson(json);

  final int? id;
  final int? stakeholderId;
  @DateConverter()
  final DateTime? createdDateFrom;
  @DateConverter()
  final DateTime? createdDateTo;
  @DateConverter()
  final DateTime? issueDateFrom;
  @DateConverter()
  final DateTime? issueDateTo;
  final double? totalAmountFrom;
  final double? totalAmountTo;
  final String? query;
  final QuotationStatusDto? status;

  @override
  Map<String, dynamic> toJson() => _$QuotationFilterDtoToJson(this);
}