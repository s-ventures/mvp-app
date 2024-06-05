import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';

part 'quotes_state.freezed.dart';

@freezed
class QuotesState with _$QuotesState {
  const factory QuotesState({
    @Default(AsyncLoading<List<Quotation>>()) AsyncValue<List<Quotation>> quotes,
    @Default(AsyncLoading<List<Quotation>>()) AsyncValue<List<Quotation>> pendingQuotes,
    // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    QuotationStatus? status,
  }) = _QuotesState;
}
