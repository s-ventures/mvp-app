// {
//   "movementId": 0,
//   "postingDate": "2024-03-25",
//   "valueDate": "2024-03-25",
//   "amount": 0,
//   "currencyCode": "string",
//   "analyticsCategory": "string",
//   "userCategory": "string",
//   "cardId": 0,
//   "responseCode": "string",
//   "concept": "string",
//   "postingTime": "HH:mm:SS",
//   "productType": "ACCOUNTS"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'simplified_card_transaction_dto.freezed.dart';
part 'simplified_card_transaction_dto.g.dart';

@freezed
class SimplifiedCardTransactionDto with _$SimplifiedCardTransactionDto {
  const factory SimplifiedCardTransactionDto({
    required int movementId,
    @DateConverter() required DateTime postingDate,
    @DateConverter() required DateTime valueDate,
    required double amount,
    required String currencyCode,
    required String? analyticsCategory,
    required String? userCategory,
    required int cardId,
    required String responseCode,
    required String concept,
    required String postingTime,
    required ProductTypeDto productType,
  }) = _CardTransactionDto;

  factory SimplifiedCardTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedCardTransactionDtoFromJson(json);
}

extension SimplifiedCardTransactionDtoX on SimplifiedCardTransactionDto {
  SimplifiedCardTransaction toDomain() {
    return SimplifiedCardTransaction(
      id: UniqueId.fromUniqueString(movementId.toString()),
      date: postingDate,
      amount: amount,
      concept: concept,
    );
  }
}
