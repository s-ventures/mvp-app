import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/cards/transactions/entities/card_transaction_credit_debit.dart';

part 'filter_simplified_card_transactions_state.freezed.dart';

@freezed
class FilterSimplifiedCardTransactionsState
    with _$FilterSimplifiedCardTransactionsState {
  const factory FilterSimplifiedCardTransactionsState({
    @Default('') String search,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    @Default('Entretenimiento') String category,
    CardTransactionCreditDebit? creditDebit,
  }) = _FilterSimplifiedCardTransactionsState;
}
