import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/detailed_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/select_card_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/failures/simplified_card_failure.dart';

abstract class ICardsRepository {
  Future<Either<SimplifiedCardFailure, List<SimplifiedCard>>> getSimplifiedCards({
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedCardFailure, DetailedCard>> getDetailedCard({
    required int cardId,
  });

  Future<Either<SelectCardFailure, Unit>> selectCard({
    required int cardContractId,
    required int cardId,
  });

  Stream<Option<(UniqueId, UniqueId)>> watchSelectedCard();
}
