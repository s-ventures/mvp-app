import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/detailed_quote.dart';

part 'detailed_quote_state.freezed.dart';

@freezed
class DetailedQuoteState with _$DetailedQuoteState {
  const factory DetailedQuoteState({
    @Default(AsyncLoading<DetailedQuote>()) AsyncValue<DetailedQuote> quote,
  }) = _DetailedQuoteState;
}
