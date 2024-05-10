import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';

part 'detailed_account_transaction_state.freezed.dart';

@freezed
class DetailedAccountTransactionState with _$DetailedAccountTransactionState {
  const factory DetailedAccountTransactionState({
    @Default(AsyncLoading<DetailedAccountTransaction>())
    AsyncValue<DetailedAccountTransaction> transaction,
  }) = _DetailedAccountTransactionState;
}
