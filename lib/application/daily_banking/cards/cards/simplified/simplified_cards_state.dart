import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/simplified_card.dart';

part 'simplified_cards_state.freezed.dart';

@freezed
class SimplifiedCardsState with _$SimplifiedCardsState {
  const factory SimplifiedCardsState({
    @Default(AsyncLoading<List<SimplifiedCard>>())
    AsyncValue<List<SimplifiedCard>> cards,
    @Default(0) int selectedCardIndex,
  }) = _SimplifiedCardsState;
}
