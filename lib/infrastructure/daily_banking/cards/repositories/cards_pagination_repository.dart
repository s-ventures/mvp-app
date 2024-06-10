import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/repositories/i_cards_repository.dart';

class CardsPaginationRepository extends IPaginationListRepository<SimplifiedCard> {
  CardsPaginationRepository(this._repository);

  final ICardsRepository _repository;

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
