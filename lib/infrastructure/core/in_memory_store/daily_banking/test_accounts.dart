import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_entity.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';
import 'package:ui_kit/ui_kit.dart';

final _id = UniqueId.fromUniqueString('1');
final _balance = AccountBalance(
  id: UniqueId(),
  balance: 456,
  availableBalance: 336,
);
const _currencyCode = 'EUR';

final _entity = AccountEntity(
  name: 'soon',
  icon: IconAssets.soon,
);

final kTestSimplifiedAccounts = [
  SimplifiedAccount(
    id: _id,
    entity: _entity,
    currencyCode: _currencyCode,
    status: AccountStatus.active,
    balance: _balance,
  ),
];

final kTestDetailedAccounts = [
  DetailedAccount(
    id: _id,
    iban: 'ES92 1234 5678 9012 1234',
    balance: _balance,
    currencyCode: _currencyCode,
    entity: _entity,
    accountHolder: 'Miguel García',
    alias: 'Alias',
    name: 'Cuenta',
    bicSwift: 'NNKIKL2K',
  ),
];
