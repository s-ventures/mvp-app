import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_entity.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';
import 'package:ui_kit/ui_kit.dart';

final _idSoon = UniqueId.fromUniqueString('1');
final _idSantander = UniqueId.fromUniqueString('2');

final _balanceSoon = AccountBalance(
  id: UniqueId(),
  balance: 456,
  availableBalance: 336,
);

final _balanceSantander = AccountBalance(
  id: UniqueId(),
  balance: 333,
  availableBalance: 336,
);

const _currencyCode = 'EUR';

final _entitySoon = AccountEntity(
  name: 'soon',
  icon: IconAssets.soon,
  iconColor: AppThemeColorScheme.light.secondaryLight600,
  iconBackgroundColor: AppThemeColorScheme.light.backgroundLight0,
);

final _entitySantander = AccountEntity(
  name: 'Santander',
  icon: IconAssets.santander,
  iconColor: AppThemeColorScheme.light.iconLight0,
  iconBackgroundColor: AppThemeColorScheme.light.statusError,
);

final kTestSimplifiedAccounts = [
  SimplifiedAccount(
    id: _idSoon,
    entity: _entitySoon,
    currencyCode: _currencyCode,
    status: AccountStatus.active,
    balance: _balanceSoon,
  ),
  SimplifiedAccount(
    id: _idSantander,
    entity: _entitySantander,
    currencyCode: _currencyCode,
    status: AccountStatus.active,
    balance: _balanceSantander,
  ),
];

final kTestDetailedAccounts = [
  DetailedAccount(
    id: _idSoon,
    iban: 'ES92 1234 5678 9012 1234',
    balance: _balanceSoon,
    currencyCode: _currencyCode,
    entity: _entitySoon,
    accountHolder: 'Miguel García',
    alias: 'Alias Soon',
    name: 'Cuenta Soon',
    bicSwift: 'NNKIKL2K',
  ),
  DetailedAccount(
    id: _idSantander,
    iban: 'ES92 1234 5678 9012 0000',
    balance: _balanceSantander,
    currencyCode: _currencyCode,
    entity: _entitySantander,
    accountHolder: 'Sergio Sanchez',
    alias: 'Alias Santander',
    name: 'Cuenta Santander',
    bicSwift: 'NNKIKL2K',
  ),
];
