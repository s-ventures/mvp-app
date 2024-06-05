import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/account_status.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/entities/account_balance.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'simplified_account.freezed.dart';

@freezed
class SimplifiedAccount with _$SimplifiedAccount {
  const factory SimplifiedAccount({
    required UniqueId id,
    required String entity,
    required String currencyCode,
    required AccountStatus status,
    required AccountBalance balance,
  }) = _SimplifiedAccount;
}
