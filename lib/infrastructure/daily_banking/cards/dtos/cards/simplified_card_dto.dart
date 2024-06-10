import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_category_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_contract_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_plan_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/card_type_dto.dart';

part 'simplified_card_dto.freezed.dart';
part 'simplified_card_dto.g.dart';

@freezed
abstract class SimplifiedCardDto with _$SimplifiedCardDto {
  const factory SimplifiedCardDto({
    required int cardId,
    required String alias,
    required CardTypeDto cardType,
    required CardStatusDto status,
    required String cardName,
    required String brand,
    required String cardEncryptedNumber,
    required CardCategoryDto category,
    required CardPlanDto plan,
    required CardContractDto cardContract,
  }) = _SimplifiedCardDto;

  factory SimplifiedCardDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedCardDtoFromJson(json);
}

extension SimplifiedCardDtoX on SimplifiedCardDto {
  SimplifiedCard toDomain() {
    return SimplifiedCard(
      id: UniqueId.fromUniqueString(cardId.toString()),
      alias: alias,
      type: cardType.toDomain(),
      status: status.toDomain(),
      name: cardName,
      brand: brand,
      cardEncryptedNumber: cardEncryptedNumber,
      category: category.toDomain(),
      plan: plan.toDomain(),
      contract: cardContract.toDomain(),
    );
  }
}
