import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/detailed_account.dart';

part 'detailed_account_state.freezed.dart';

@freezed
class DetailedAccountState with _$DetailedAccountState {
  const factory DetailedAccountState({
    @Default(AsyncLoading<DetailedAccount>()) AsyncValue<DetailedAccount> account,
  }) = _DetailedAccountState;
}
