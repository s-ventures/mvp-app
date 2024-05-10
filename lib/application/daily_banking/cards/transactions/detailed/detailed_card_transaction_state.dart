import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';

part 'detailed_card_transaction_state.freezed.dart';

@freezed
class DetailedCardTransactionState with _$DetailedCardTransactionState {
  const factory DetailedCardTransactionState({
    @Default(AsyncLoading<DetailedCardTransaction>())
    AsyncValue<DetailedCardTransaction> transaction,
  }) = _DetailedCardTransactionState;
}
