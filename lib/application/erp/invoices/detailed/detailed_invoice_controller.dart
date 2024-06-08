import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/detailed/detailed_invoice_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/repositories/i_invoices_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_repository.dart';

final detailedInvoiceControllerProvider =
    StateNotifierProvider<DetailedInvoiceController, DetailedInvoiceState>(
  (ref) => DetailedInvoiceController(
    ref.watch(invoicesRepositoryProvider),
  ),
);

class DetailedInvoiceController extends StateNotifier<DetailedInvoiceState> {
  DetailedInvoiceController(this._repository) : super(const DetailedInvoiceState());

  final IInvoicesRepository _repository;

  Future<void> init(int contractId, int id) async {
    try {
      final invoiceOrFailure = await _repository.getDetailedInvoice(
        contractId: contractId,
        id: id,
      );

      setStateSafe(
        () => state = invoiceOrFailure.fold(
          (l) => state.copyWith(invoice: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(invoice: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(invoice: AsyncError(e, StackTrace.current));
    }
  }
}
