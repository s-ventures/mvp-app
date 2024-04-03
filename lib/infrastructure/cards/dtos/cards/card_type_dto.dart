import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/card_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum CardTypeDto {
  credit,
  debit,
}

extension CardTypeDtoX on CardTypeDto {
  CardType toDomain() => switch (this) {
        CardTypeDto.credit => CardType.credit,
        CardTypeDto.debit => CardType.debit,
      };
}
