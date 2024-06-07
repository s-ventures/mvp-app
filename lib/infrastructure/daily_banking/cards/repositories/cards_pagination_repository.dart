import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/cards_repository.dart';

final cardsPaginationRepositoryProvider = Provider<CardsPaginationRepository>(
  (ref) => CardsPaginationRepository(ref.watch(cardsRepositoryProvider)),
);

class CardsPaginationRepository extends IPaginationListRepository<SimplifiedCard> {
  CardsPaginationRepository(this._repository);

  final CardsRepository _repository;

  @override
  Future<List<SimplifiedCard>?> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final cards = await _repository.getSimplifiedCards(
      page: page,
      pageSize: pageSize,
    );
    return cards.fold((l) => null, (r) => r);
  }

  Future<void> selectCard({
    required int cardContractId,
    required int cardId,
  }) =>
      _repository.selectCard(
        cardId: cardId,
        cardContractId: cardContractId,
      );
}
