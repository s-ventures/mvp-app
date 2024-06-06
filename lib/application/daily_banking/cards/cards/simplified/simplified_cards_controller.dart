import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/cards/cards/simplified/simplified_cards_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/cards_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/fake_cards_pagination_repository.dart';

final simplifiedCardsControllerProvider =
    StateNotifierProvider<SimplifiedCardsController, SimplifiedCardsState>(
  (ref) => SimplifiedCardsController(ref.watch(fakeCardsPaginationRepositoryProvider)),
);

class SimplifiedCardsController extends StateNotifier<SimplifiedCardsState>
    with PaginationLoadingProvider<List<SimplifiedCard>> {
  SimplifiedCardsController(this._repository) : super(const SimplifiedCardsState());

  final CardsPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            cards: const AsyncLoading<List<SimplifiedCard>>().copyWithPrevious(state.cards),
          ),
        );
      },
      onDataLoaded: (cards) {
        setStateSafe(
          () => state.copyWith(
            cards: cards,
            selectedCardIndex: state.selectedCardIndex,
          ),
        );
      },
    );
  }

  void selectCard({
    required UniqueId cardContractId,
    required UniqueId cardId,
  }) {
    _repository.selectCard(
      cardId: cardId.toInt(),
      cardContractId: cardContractId.toInt(),
    );
  }

  void setSelectedCardIndex(int index) {
    state = state.copyWith(selectedCardIndex: index);
  }
}
