import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/detailed_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/select_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/simplified_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/repositories/i_cards_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/cards/cards_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/local/cards_local_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/remote/cards_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/detailed_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/simplified_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:rxdart/rxdart.dart';

final cardsRepositoryProvider = Provider<CardsRepository>(
  (ref) => CardsRepository(
    localDataSource: CardsLocalDataSource(ref.watch(sharedPreferencesLocalStorageProvider)),
    remoteDataSource: CardsRemoteDataSource(ref.watch(cardsRestClientProvider)),
  ),
);

class CardsRepository implements ICardsRepository {
  CardsRepository({
    required CardsLocalDataSource localDataSource,
    required CardsRemoteDataSource remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final CardsLocalDataSource _localDataSource;
  final CardsRemoteDataSource _remoteDataSource;
  final _selectedCardId = BehaviorSubject.seeded(none<(UniqueId, UniqueId)>());

  @override
  Future<Either<SimplifiedCardFailure, List<SimplifiedCard>>> getSimplifiedCards({
    int page = 0,
    int pageSize = 10,
  }) async {
    try {
      final response = await _remoteDataSource.getSimplifiedCards(
        paginatedRequest: PaginatedRequest(
          pageNumber: page,
          pageSize: pageSize,
        ),
      );
      final cards = response.data.map((e) => e.toDomain()).toList();
      return right(cards);
    } catch (_) {
      return left(const SimplifiedCardFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedCardFailure, DetailedCard>> getDetailedCard({
    required int cardId,
    int page = 0,
    int pageSize = 10,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedCard(
        paginatedRequest: PaginatedRequest(
          pageNumber: page,
          pageSize: pageSize,
        ),
      );
      final card = response.data
          .firstWhere(
            (element) => element.cardId == cardId,
          )
          .toDomain();
      return right(card);
    } catch (_) {
      return left(const DetailedCardFailure.unexpected());
    }
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
