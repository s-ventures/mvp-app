import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';

part 'pending_invoices_state.freezed.dart';

@freezed
class PendingInvoicesState with _$PendingInvoicesState {
  const factory PendingInvoicesState({
    @Default(AsyncLoading<List<Invoice>>()) AsyncValue<List<Invoice>> pendingInvoices,
  }) = _PendingInvoicesState;
}
