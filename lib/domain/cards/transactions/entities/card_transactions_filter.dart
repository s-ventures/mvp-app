import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'card_transactions_filter.freezed.dart';

@freezed
class CardTransactionsFilter with _$CardTransactionsFilter {
  const factory CardTransactionsFilter({
    required List<UniqueId> cardContractIds,
    required List<UniqueId> cardIds,
    double? amountFrom,
    double? amountTo,
    DateTime? dateFrom,
    DateTime? dateTo,
    String? concept,
  }) = _CardTransactionsFilter;
}
