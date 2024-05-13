// {
//   "movementId": 0,
//   "postingDate": "2024-04-24",
//   "valueDate": "2024-04-24",
//   "amount": 0,
//   "currencyCode": "string",
//   "description": "string",
//   "analyticsCategory": "string",
//   "userComments": "string",
//   "userCategory": "string",
//   "placeId": "string",
//   "cardId": 0,
//   "responseCode": "string",
//   "merchantName": "string",
//   "concept": "string",
//   "postingTime": "HH:mm:SS",
//   "accountMovementId": 0,
//   "attachments": [
//     {
//       "movementAttachmentId": 0,
//       "movementId": 0,
//       "fileId": 0
//     }
//   ],
//   "productType": "ACCOUNTS"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'detailed_card_transaction_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class DetailedCardTransactionDto extends ExtendedDetailsDto {
  DetailedCardTransactionDto({
    required this.movementId,
    required this.postingDate,
    required this.valueDate,
    required this.amount,
    required this.currencyCode,
    required this.description,
    required this.analyticsCategory,
    required this.userComments,
    required this.userCategory,
    required this.placeId,
    required this.cardId,
    required this.responseCode,
    required this.merchantName,
    required this.concept,
    required this.postingTime,
    required this.accountMovementId,
    required this.attachments,
    required this.productType,
  });

  factory DetailedCardTransactionDto.fromJson(Map<String, dynamic> json) => _$DetailedCardTransactionDtoFromJson(json);

  final int movementId;
  @DateConverter()
  final DateTime postingDate;
  @DateConverter()
  final DateTime valueDate;
  final double amount;
  final String currencyCode;
  final String description;
  final String? analyticsCategory;
  final String? userComments;
  final String? userCategory;
  final String? placeId;
  final int cardId;
  final String responseCode;
  final String merchantName;
  final String concept;
  final String postingTime;
  final int accountMovementId;
  final List<FileAttachmentDto> attachments;
  final ProductTypeDto productType;

  @override
  Map<String, dynamic> toJson() => _$DetailedCardTransactionDtoToJson(this);
}
