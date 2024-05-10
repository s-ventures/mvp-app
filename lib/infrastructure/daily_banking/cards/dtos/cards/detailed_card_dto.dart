// {
//   "cardId": 0,
//   "brand": "string",
//   "cardType": "string",
//   "cardName": "string",
//   "createDate": "2024-03-16",
//   "deliveryDate": "2024-03-16",
//   "activateDate": "2024-03-16",
//   "dueDate": "2024-03-16",
//   "currencyCode": "string",
//   "status": "ACTIVE",
//   "statusReason": "string",
//   "cardEncryptedNumber": "string",
//   "cardContract": {
//     "cardContractId": 0,
//     "accountId": 0,
//     "createDate": "2024-03-16",
//     "endDate": "2024-03-16",
//     "currencyCode": "string"
//   },
//   "balance": {
//     "cardId": 0,
//     "date": "2024-03-16T17:24:54.424Z",
//     "atmWithdrawalLimit": 0,
//     "atmDailyLimit": 0,
//     "atmMonthlyLimit": 0,
//     "posOrderLimit": 0,
//     "posDailyLimit": 0,
//     "posMonthlyLimit": 0
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/balances/simplified_card_balance_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_contract_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_type_dto.dart';

part 'detailed_card_dto.freezed.dart';
part 'detailed_card_dto.g.dart';

@freezed
class DetailedCardDto with _$DetailedCardDto {
  const factory DetailedCardDto({
    required int cardId,
    required String brand,
    required CardTypeDto cardType,
    required String cardName,
    required String createDate,
    required String deliveryDate,
    required String activateDate,
    required String currencyCode,
    required CardStatusDto status,
    required String cardEncryptedNumber,
    required CardContractDto cardContract,
    required SimplifiedCardBalanceDto? balance,
    required String? dueDate,
    required String? statusReason,
    required String? cvv,
  }) = _DetailedCardDto;

  factory DetailedCardDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedCardDtoFromJson(json);
}

extension DetailedCardDtoX on DetailedCardDto {
  DetailedCard toDomain() {
    return DetailedCard(
      cardId: UniqueId.fromUniqueString(cardId.toString()),
      cardName: cardName,
      dueDate: dueDate != null ? DateTime.parse(dueDate!) : null,
      cvv: cvv ?? '',
      cardEncryptedNumber: cardEncryptedNumber,
    );
  }
}
