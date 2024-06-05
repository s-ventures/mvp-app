import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';

part 'detailed_invoice_state.freezed.dart';

@freezed
class DetailedInvoiceState with _$DetailedInvoiceState {
  const factory DetailedInvoiceState({
    @Default(AsyncLoading<DetailedInvoice>()) AsyncValue<DetailedInvoice> invoice,
  }) = _DetailedInvoiceState;
}
