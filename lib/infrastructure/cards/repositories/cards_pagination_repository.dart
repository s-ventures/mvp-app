import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/repositories/cards_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';

final cardsPaginationRepositoryProvider = Provider<CardsPaginationRepository>(
  (ref) => CardsPaginationRepository(ref.watch(cardsRepositoryProvider)),
);

class CardsPaginationRepository
    extends PaginationListRepository<SimplifiedCard> {
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
