import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';

part 'invoices_state.freezed.dart';

@freezed
class InvoicesState with _$InvoicesState {
  const factory InvoicesState({
    @Default(AsyncLoading<List<Invoice>>()) AsyncValue<List<Invoice>> invoices,
    @Default(AsyncLoading<List<Invoice>>()) AsyncValue<List<Invoice>> pendingInvoices,
    // TODO(georgeta): Cambiar fechas a dueDate cuando Bfmf las añada
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    InvoiceStatus? status,
  }) = _InvoicesState;
}
