import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/entities/account_balance.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'detailed_account.freezed.dart';

@freezed
class DetailedAccount with _$DetailedAccount {
  const factory DetailedAccount({
    required UniqueId id,
    required String number,
    required AccountBalance balance,
    required String currencyCode,
    required String entity,
    required String accountHolder,
  }) = _DetailedAccount;
}
