import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';

part 'filter_simplified_account_transactions_state.freezed.dart';

@freezed
class FilterSimplifiedAccountTransactionsState
    with _$FilterSimplifiedAccountTransactionsState {
  const factory FilterSimplifiedAccountTransactionsState({
    @Default('') String search,
    DateTime? startDate,
    DateTime? endDate,
    double? amountFrom,
    double? amountTo,
    @Default('Entretenimiento') String category,
    @Default([]) List<AccountTransactionCreditDebit> creditDebitList,
    @Default(0) int selectedIndexCreditDebit,
  }) = _FilterSimplifiedAccountTransactionsState;
}
