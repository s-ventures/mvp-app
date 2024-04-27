// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "type": "BASE",
//   "orderDateFrom": "2024-04-19",
//   "orderDateTo": "2024-04-19",
//   "valueDateFrom": "2024-04-19",
//   "valueDateTo": "2024-04-19",
//   "concept": "string",
//   "settlementAmountFrom": 0,
//   "settlementAmountTo": 0,
//   "foreignExchangeFrom": 0,
//   "foreignExchangeTo": 0,
//   "exchangeValueFrom": 0,
//   "exchangeValueTo": 0,
//   "instructedAmountFrom": 0,
//   "instructedAmountTo": 0,
//   "status": "SENT",
//   "concept2": "string",
//   "sentTransferId": 0,
//   "beneficiaryName": "string",
//   "transferDateFrom": "2024-04-19",
//   "transferDateTo": "2024-04-19",
//   "sortingTarget": "POSTING_DATE",
//   "sortingOrder": "ASCENDANT"
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfers_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'sent_transfers_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class SentTransfersFilterDto extends PaginatedRequest {
  SentTransfersFilterDto({
    this.type,
    this.orderDateFrom,
    this.orderDateTo,
    this.valueDateFrom,
    this.valueDateTo,
    this.concept,
    this.settlementAmountFrom,
    this.settlementAmountTo,
    this.foreignExchangeFrom,
    this.foreignExchangeTo,
    this.exchangeValueFrom,
    this.exchangeValueTo,
    this.instructedAmountFrom,
    this.instructedAmountTo,
    this.status,
    this.concept2,
    this.sentTransferId,
    this.beneficiaryName,
    this.transferDateFrom,
    this.transferDateTo,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory SentTransfersFilterDto.fromDomain({
    required SentTransfersFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return SentTransfersFilterDto(
      type: filter.type?.toDto(),
      orderDateFrom: filter.orderDateFrom,
      orderDateTo: filter.orderDateTo,
      valueDateFrom: filter.valueDateFrom,
      valueDateTo: filter.valueDateTo,
      concept: filter.concept,
      settlementAmountFrom: filter.settlementAmountFrom,
      settlementAmountTo: filter.settlementAmountTo,
      foreignExchangeFrom: filter.foreignExchangeFrom,
      foreignExchangeTo: filter.foreignExchangeTo,
      exchangeValueFrom: filter.exchangeValueFrom,
      exchangeValueTo: filter.exchangeValueTo,
      instructedAmountFrom: filter.instructedAmountFrom,
      instructedAmountTo: filter.instructedAmountTo,
      status: filter.status?.toDto(),
      concept2: filter.concept2,
      sentTransferId: filter.sentTransferId?.toInt(),
      beneficiaryName: filter.beneficiaryName,
      transferDateFrom: filter.transferDateFrom,
      transferDateTo: filter.transferDateTo,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory SentTransfersFilterDto.fromJson(Map<String, dynamic> json) =>
      _$SentTransfersFilterDtoFromJson(json);

  final SentTransferTypeDto? type;
  @DateConverter()
  final DateTime? orderDateFrom;
  @DateConverter()
  final DateTime? orderDateTo;
  @DateConverter()
  final DateTime? valueDateFrom;
  @DateConverter()
  final DateTime? valueDateTo;
  final String? concept;
  final int? settlementAmountFrom;
  final int? settlementAmountTo;
  final int? foreignExchangeFrom;
  final int? foreignExchangeTo;
  final int? exchangeValueFrom;
  final int? exchangeValueTo;
  final int? instructedAmountFrom;
  final int? instructedAmountTo;
  final SentTransferStatusTypeDto? status;
  final String? concept2;
  final int? sentTransferId;
  final String? beneficiaryName;
  @DateConverter()
  final DateTime? transferDateFrom;
  @DateConverter()
  final DateTime? transferDateTo;
  @JsonKey(
    includeFromJson: true,
    includeToJson: true,
    name: 'sortingTarget',
  )
  final String _sortingTarget = 'POSTING_DATE';
  @JsonKey(
    includeFromJson: true,
    includeToJson: true,
    name: 'sortingOrder',
  )
  final String _sortingOrder = 'DESCENDANT';

  @override
  Map<String, dynamic> toJson() => _$SentTransfersFilterDtoToJson(this);
}