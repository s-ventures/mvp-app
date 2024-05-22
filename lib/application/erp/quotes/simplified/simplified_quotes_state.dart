import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';

part 'simplified_quotes_state.freezed.dart';

@freezed
class SimplifiedQuotesState with _$SimplifiedQuotesState {
  const factory SimplifiedQuotesState({
    @Default(AsyncLoading<List<Quotation>>()) AsyncValue<List<Quotation>> quotes,
  }) = _SimplifiedQuotesState;
}
