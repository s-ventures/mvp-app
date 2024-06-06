import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_plan.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum CardPlanDto {
  basic,
  premium,
}

extension CardPlanDtoX on CardPlanDto {
  CardPlan toDomain() => switch (this) {
        CardPlanDto.basic => CardPlan.basic,
        CardPlanDto.premium => CardPlan.premium,
      };
}
