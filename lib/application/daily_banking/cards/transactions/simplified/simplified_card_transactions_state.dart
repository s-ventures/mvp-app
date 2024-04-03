import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/simplified_card_transaction.dart';

part 'simplified_card_transactions_state.freezed.dart';

@freezed
class SimplifiedCardTransactionsState with _$SimplifiedCardTransactionsState {
  const factory SimplifiedCardTransactionsState({
    @Default(AsyncLoading<List<SimplifiedCardTransaction>>()) AsyncValue<List<SimplifiedCardTransaction>> transactions,
  }) = _SimplifiedCardTransactionsState;
}
