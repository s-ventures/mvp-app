import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_balance_state.freezed.dart';

@freezed
class AccountBalanceState with _$AccountBalanceState {
  const factory AccountBalanceState({
    @Default(AsyncLoading<AccountBalance>()) AsyncValue<AccountBalance> balance,
  }) = _AccountBalanceState;
}
