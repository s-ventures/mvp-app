import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';

part 'simplified_invoices_state.freezed.dart';

@freezed
class SimplifiedInvoicesState with _$SimplifiedInvoicesState {
  const factory SimplifiedInvoicesState({
    @Default(AsyncLoading<List<Invoice>>()) AsyncValue<List<Invoice>> invoices,
  }) = _SimplifiedInvoicesState;
}
