import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'account_transactions_filter.freezed.dart';

@freezed
class AccountTransactionsFilter with _$AccountTransactionsFilter {
  const factory AccountTransactionsFilter({
    required List<UniqueId> accountIds,
    String? description,
    DateTime? dateFrom,
    DateTime? dateTo,
    double? amountFrom,
    double? amountTo,
    AccountTransactionCreditDebit? creditDebit,
  }) = _AccountTransactionsFilter;
}
