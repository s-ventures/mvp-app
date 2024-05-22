import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/overview_quotes.dart';

part 'overview_quotes_state.freezed.dart';

@freezed
class OverviewQuotesState with _$OverviewQuotesState {
  const factory OverviewQuotesState({
    @Default(AsyncLoading<OverviewQuotes>()) AsyncValue<OverviewQuotes> overview,
  }) = _OverviewQuotesState;
}
