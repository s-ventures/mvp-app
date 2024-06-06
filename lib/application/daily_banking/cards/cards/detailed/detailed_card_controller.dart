import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/detailed/detailed_card_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/cards_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/fake_cards_repository.dart';

final detailedCardControllerProvider =
    StateNotifierProvider<DetailedCardController, DetailedCardState>(
  (ref) => DetailedCardController(
    ref.watch(fakeCardsRepositoryProvider),
  ),
);

class DetailedCardController extends StateNotifier<DetailedCardState> {
  DetailedCardController(this._repository) : super(const DetailedCardState());

  final CardsRepository _repository;

  Future<void> init(UniqueId cardId) async {
    try {
      final cardOrFailure = await _repository.getDetailedCard(cardId: cardId.toInt());

      setStateSafe(
        () => state = cardOrFailure.fold(
          (l) => state.copyWith(card: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(card: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(card: AsyncError(e, StackTrace.current));
    }
  }
}
