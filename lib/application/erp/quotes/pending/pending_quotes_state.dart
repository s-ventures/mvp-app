import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';

part 'pending_quotes_state.freezed.dart';

@freezed
class PendingQuotesState with _$PendingQuotesState {
  const factory PendingQuotesState({
    @Default(AsyncLoading<List<Quotation>>()) AsyncValue<List<Quotation>> pendingQuotes,
  }) = _PendingQuotesState;
}
