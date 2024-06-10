import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_category.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum CardCategoryDto {
  visa,
  mastercard,
}

extension CardCategoryDtoX on CardCategoryDto {
  CardCategory toDomain() => switch (this) {
        CardCategoryDto.visa => CardCategory.visa,
        CardCategoryDto.mastercard => CardCategory.mastercard,
      };
}
