// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "movementId": 0,
//   "postingDateFrom": "2024-03-25",
//   "postingDateTo": "2024-03-25",
//   "valueDateFrom": "2024-03-25",
//   "valueDateTo": "2024-03-25",
//   "type": "string",
//   "amountFrom": 0,
//   "amountTo": 0,
//   "currencyCode": "string",
//   "description": "string",
//   "userComments": "string",
//   "userCategory": "string",
//   "cardContractId": [
//     0
//   ],
//   "cardId": [
//     0
//   ],
//   "responseCode": "string",
//   "merchantName": "string",
//   "concept": "string"
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';

part 'card_transactions_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class CardTransactionsFilterDto extends PaginatedRequest {
  CardTransactionsFilterDto({
    required this.cardContractId,
    required this.cardId,
    required this.amountFrom,
    required this.amountTo,
    required this.postingDateFrom,
    required this.postingDateTo,
    required this.concept,
    required super.pageSize,
    required super.pageNumber,
  });

  factory CardTransactionsFilterDto.fromDomain({
    required CardTransactionsFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return CardTransactionsFilterDto(
      cardContractId: filter.cardContractIds.map((e) => e.toInt()).toList(),
      cardId: filter.cardIds.map((e) => e.toInt()).toList(),
      postingDateFrom: filter.dateFrom,
      postingDateTo: filter.dateTo,
      amountFrom: filter.amountFrom,
      amountTo: filter.amountTo,
      // movementId: null,
      // valueDateFrom: null,
      // valueDateTo: null,
      // type: null,
      // currencyCode: null,
      // description: null,
      // userComments: null,
      // userCategory: null,
      // responseCode: null,
      // merchantName: null,
      concept: filter.concept,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory CardTransactionsFilterDto.fromJson(Map<String, dynamic> json) => _$CardTransactionsFilterDtoFromJson(json);

  final List<int> cardContractId;
  final List<int> cardId;
  @DateConverter()
  final DateTime? postingDateFrom;
  @DateConverter()
  final DateTime? postingDateTo;
  final double? amountFrom;
  final double? amountTo;
  final String? concept;

  @override
  Map<String, dynamic> toJson() => _$CardTransactionsFilterDtoToJson(this);
}
