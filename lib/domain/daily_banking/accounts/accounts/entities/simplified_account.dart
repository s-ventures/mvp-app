import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_entity.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_status.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';

part 'simplified_account.freezed.dart';

@freezed
class SimplifiedAccount with _$SimplifiedAccount {
  const factory SimplifiedAccount({
    required UniqueId id,
    required AccountEntity entity,
    required String currencyCode,
    required AccountStatus status,
    required AccountBalance balance,
  }) = _SimplifiedAccount;
}
