import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transaction_operation_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'card_transactions_filter.freezed.dart';

@freezed
class CardTransactionsFilter with _$CardTransactionsFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory CardTransactionsFilter({
    required List<UniqueId> cardContractIds,
    required List<UniqueId> cardIds,
    required TransactionOperationType operationType,
    double? amountFrom,
    double? amountTo,
    DateTime? dateFrom,
    DateTime? dateTo,
    String? concept,
  }) = _CardTransactionsFilter;
}
