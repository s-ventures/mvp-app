import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_contract_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_type_dto.dart';

part 'simplified_card_dto.freezed.dart';
part 'simplified_card_dto.g.dart';

// {
//   "cardId": 0,
//   "brand": "string",
//   "cardType": "string",
//   "cardName": "string",
//   "status": "ACTIVE",
//   "cardEncryptedNumber": "string",
//   "cardContract": {
//     "cardContractId": 0,
//     "accountId": 0,
//     "createDate": "2024-03-16",
//     "endDate": "2024-03-16",
//     "currencyCode": "string"
//   }
// }

@freezed
abstract class SimplifiedCardDto with _$SimplifiedCardDto {
  const factory SimplifiedCardDto({
    required int cardId,
    required String brand,
    required CardTypeDto cardType,
    required String cardName,
    required CardStatusDto status,
    required String cardEncryptedNumber,
    required CardContractDto cardContract,
  }) = _SimplifiedCardDto;

  factory SimplifiedCardDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedCardDtoFromJson(json);
}

extension SimplifiedCardDtoX on SimplifiedCardDto {
  SimplifiedCard toDomain() {
    return SimplifiedCard(
      id: UniqueId.fromUniqueString(cardId.toString()),
      name: cardName,
      brand: brand,
      lastFourDigits: cardEncryptedNumber,
      type: cardType.toDomain(),
      contract: cardContract.toDomain(),
    );
  }
}
