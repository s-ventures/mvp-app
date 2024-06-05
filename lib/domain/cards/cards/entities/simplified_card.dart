import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/card_contract.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/card_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'simplified_card.freezed.dart';

@freezed
class SimplifiedCard with _$SimplifiedCard {
  const factory SimplifiedCard({
    required UniqueId id,
    required String name,
    required String brand,
    required String lastFourDigits,
    required CardType type,
    required CardContract contract,
  }) = _SimplifiedCard;
}
