import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/detailed_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/select_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/simplified_card_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/in_memory_store/daily_banking/test_cards.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/in_memory_store/in_memory_store.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/local/cards_local_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/repositories/cards_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:rxdart/rxdart.dart';

final fakeCardsRepositoryProvider = Provider<FakeCardsRepository>((ref) {
  return FakeCardsRepository(
    localDataSource: CardsLocalDataSource(ref.watch(sharedPreferencesLocalStorageProvider)),
    simplifiedCards: InMemoryStore<List<SimplifiedCard>>(List.from(kTestSimplifiedCards)),
    detailedCards: InMemoryStore<List<DetailedCard>>(List.from(kTestDetailedCards)),
  );
});

class FakeCardsRepository implements CardsRepository {
  FakeCardsRepository({
    required CardsLocalDataSource localDataSource,
    required InMemoryStore<List<SimplifiedCard>> simplifiedCards,
    required InMemoryStore<List<DetailedCard>> detailedCards,
  })  : _localDataSource = localDataSource,
        _simplifiedCards = simplifiedCards,
        _detailedCards = detailedCards;

  final InMemoryStore<List<SimplifiedCard>> _simplifiedCards;
  final InMemoryStore<List<DetailedCard>> _detailedCards;
  final CardsLocalDataSource _localDataSource;

  final _selectedCardId = BehaviorSubject.seeded(none<(UniqueId, UniqueId)>());

  @override
  Future<Either<DetailedCardFailure, DetailedCard>> getDetailedCard({
    required int cardId,
  }) async {
    return right(_detailedCards.value.firstWhere((element) => element.id.toInt() == cardId));
  }

  @override
  Future<Either<SimplifiedCardFailure, List<SimplifiedCard>>> getSimplifiedCards({
    int page = 0,
    int pageSize = 10,
  }) async {
    final start = page * pageSize;
    final end = min(page * pageSize + pageSize, _simplifiedCards.value.length);

    if (start >= _simplifiedCards.value.length) {
      return right(<SimplifiedCard>[]);
    }
    return right(_simplifiedCards.value.sublist(start, end));
  }

  @override
  Future<Either<SelectCardFailure, Unit>> selectCard({
    required int cardContractId,
    required int cardId,
  }) async {
    try {
      final result = await _localDataSource.saveSelectedCardId(cardId);

      if (result.isRight()) {
        _selectedCardId.add(
          some(
            (
              UniqueId.fromUniqueString(cardContractId.toString()),
              UniqueId.fromUniqueString(cardId.toString()),
            ),
          ),
        );
        return right(unit);
      } else {
        return left(const SelectCardFailure.unexpected());
      }
    } catch (_) {
      return left(const SelectCardFailure.unexpected());
    }
  }

  @override
  Stream<Option<(UniqueId, UniqueId)>> watchSelectedCard() => _selectedCardId.stream;
}
