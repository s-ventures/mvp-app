import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';

part 'simplified_accounts_state.freezed.dart';

@freezed
class SimplifiedAccountsState with _$SimplifiedAccountsState {
  const factory SimplifiedAccountsState({
    @Default(AsyncLoading<List<SimplifiedAccount>>())
    AsyncValue<List<SimplifiedAccount>> accounts,
    @Default(0) int selectedAccountIndex,
  }) = _SimplifiedAccountsState;
}
