import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'detailed_card.freezed.dart';

@freezed
class DetailedCard with _$DetailedCard {
  const factory DetailedCard({
    required UniqueId cardId,
    required String cardName,
    @DateConverter() required DateTime? dueDate,
    required String cvv,
    required String cardEncryptedNumber,
  }) = _DetailedCard;
}
