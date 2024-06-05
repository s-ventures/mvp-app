import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_simplified_card_transactions_state.freezed.dart';

@freezed
class FilterSimplifiedCardTransactionsState with _$FilterSimplifiedCardTransactionsState {
  const factory FilterSimplifiedCardTransactionsState({
    @Default('') String search,
  }) = _FilterSimplifiedCardTransactionsState;
}
