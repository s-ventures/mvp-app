import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_category.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_contract.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_plan.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_type.dart';

part 'simplified_card.freezed.dart';

@freezed
class SimplifiedCard with _$SimplifiedCard {
  const factory SimplifiedCard({
    required UniqueId id,
    required String alias,
    required CardType type,
    required CardStatus status,
    required String name,
    required String brand,
    required String cardEncryptedNumber,
    required CardCategory category,
    required CardPlan plan,
    required CardContract contract,
  }) = _SimplifiedCard;
}
