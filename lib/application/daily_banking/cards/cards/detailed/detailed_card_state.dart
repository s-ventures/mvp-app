import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detailed_card_state.freezed.dart';

@freezed
class DetailedCardState with _$DetailedCardState {
  const factory DetailedCardState({
    @Default(AsyncLoading<DetailedCard>()) AsyncValue<DetailedCard> card,
  }) = _DetailedCardState;
}
