import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_category.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_contract.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';

final _id = UniqueId.fromUniqueString('1');

final _cardContract = CardContract(
  id: UniqueId.fromUniqueString('1'),
  accountId: UniqueId.fromUniqueString('1'),
  createDate: DateTime.parse('2023-07-20'),
  endDate: null,
  currencyCode: 'EUR',
  aggregated: false,
);

final kTestSimplifiedCards = [
  SimplifiedCard(
    id: _id,
    alias: 'Personal',
    type: CardType.virtual,
    status: CardStatus.active,
    name: 'Visa',
    brand: 'soon',
    cardEncryptedNumber: '1234',
    category: CardCategory.visa,
    contract: _cardContract,
  ),
  SimplifiedCard(
    id: _id,
    alias: 'Personal',
    type: CardType.virtual,
    status: CardStatus.active,
    name: 'Juan Martínez Rodríguez',
    brand: 'soon',
    cardEncryptedNumber: '1234',
    category: CardCategory.visa,
    contract: _cardContract,
  ),
];

final kTestDetailedCards = [
  DetailedCard(
    id: _id,
    cardName: 'Juan Martínez Rodríguez',
    dueDate: DateTime.parse('2025-07-20'),
    cvv: '123',
    cardEncryptedNumber: '1234',
  ),
];
