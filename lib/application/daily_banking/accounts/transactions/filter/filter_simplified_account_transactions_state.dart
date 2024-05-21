import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';

part 'filter_simplified_account_transactions_state.freezed.dart';

@freezed
class FilterSimplifiedAccountTransactionsState with _$FilterSimplifiedAccountTransactionsState {
  const factory FilterSimplifiedAccountTransactionsState({
    @Default('') String search,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    @Default('Entretenimiento') String category,
    @Default(TransactionOperationType.all) TransactionOperationType operationType,
  }) = _FilterSimplifiedAccountTransactionsState;
}
