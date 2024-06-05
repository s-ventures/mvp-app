import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/account_entity.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';

part 'detailed_account.freezed.dart';

@freezed
class DetailedAccount with _$DetailedAccount {
  const factory DetailedAccount({
    required UniqueId id,
    required String iban,
    required AccountBalance balance,
    required String currencyCode,
    required AccountEntity entity,
    required String accountHolder,
    required String name,
    required String alias,
    required String bicSwift,
  }) = _DetailedAccount;
}
