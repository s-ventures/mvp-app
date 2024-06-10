import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum CardStatusDto {
  active,
  cancelled,
  blocked,
}

extension CardStatusDtoX on CardStatusDto {
  CardStatus toDomain() => switch (this) {
        CardStatusDto.active => CardStatus.active,
        CardStatusDto.cancelled => CardStatus.cancelled,
        CardStatusDto.blocked => CardStatus.blocked,
      };
}
