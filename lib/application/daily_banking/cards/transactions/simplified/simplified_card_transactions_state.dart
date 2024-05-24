import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';

part 'simplified_card_transactions_state.freezed.dart';

@freezed
class SimplifiedCardTransactionsState with _$SimplifiedCardTransactionsState {
  const factory SimplifiedCardTransactionsState({
    @Default(AsyncLoading<Map<DateTime, List<SimplifiedCardTransaction>>>())
    AsyncValue<Map<DateTime, List<SimplifiedCardTransaction>>> transactions,
    @Default('') String search,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    @Default('Entretenimiento') String category,
    @Default(TransactionOperationType.all) TransactionOperationType operationType,
  }) = _SimplifiedCardTransactionsState;
}
