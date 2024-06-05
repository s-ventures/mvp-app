import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'account_transactions_filter.freezed.dart';

@freezed
class AccountTransactionsFilter with _$AccountTransactionsFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory AccountTransactionsFilter({
    required List<UniqueId> accountIds,
    required TransactionOperationType operationType,
    String? description,
    DateTime? dateFrom,
    DateTime? dateTo,
    double? amountFrom,
    double? amountTo,
  }) = _AccountTransactionsFilter;
}
