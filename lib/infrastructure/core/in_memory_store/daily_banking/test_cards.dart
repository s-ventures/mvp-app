import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_category.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_contract.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/card_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/detailed_card.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/cards/entities/simplified_card.dart';

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
    id: UniqueId.fromUniqueString('1'),
    alias: 'Personal',
    type: CardType.virtual,
    status: CardStatus.active,
    name: 'Visa',
    brand: 'soon',
    cardEncryptedNumber: '7070',
    category: CardCategory.visa,
    contract: _cardContract,
  ),
  SimplifiedCard(
    id: UniqueId.fromUniqueString('2'),
    alias: 'Perdonal',
    type: CardType.debit,
    status: CardStatus.active,
    name: 'Juan Martínez Rodríguez',
    brand: 'soon',
    cardEncryptedNumber: '5858',
    category: CardCategory.mastercard,
    contract: _cardContract,
  ),
];

final kTestDetailedCards = [
  DetailedCard(
    id: UniqueId.fromUniqueString('1'),
    cardName: 'Juan Martínez Rodríguez',
    dueDate: DateTime.parse('2025-07-20'),
    cvv: '777',
    cardNumber: '1234567890127070',
  ),
  DetailedCard(
    id: UniqueId.fromUniqueString('2'),
    cardName: 'Juan Martínez Rodríguez',
    dueDate: DateTime.parse('2025-04-04'),
    cvv: '588',
    cardNumber: '1234567890125858',
  ),
];
