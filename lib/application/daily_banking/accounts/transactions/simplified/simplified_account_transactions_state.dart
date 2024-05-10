import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';

part 'simplified_account_transactions_state.freezed.dart';

@freezed
class SimplifiedAccountTransactionsState
    with _$SimplifiedAccountTransactionsState {
  const factory SimplifiedAccountTransactionsState({
    @Default(AsyncLoading<Map<DateTime, List<SimplifiedAccountTransaction>>>())
    AsyncValue<Map<DateTime, List<SimplifiedAccountTransaction>>> transactions,
  }) = _SimplifiedAccountTransactionsState;
}
