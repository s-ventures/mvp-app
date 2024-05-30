import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/pending/pending_invoices_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_pagination_repository.dart';

final pendingInvoicesControllerProvider =
    StateNotifierProvider.autoDispose<PendingInvoicesController, PendingInvoicesState>(
  (ref) => PendingInvoicesController(
    ref.watch(invoicesPaginationRepositoryProvider),
  ),
);

class PendingInvoicesController extends StateNotifier<PendingInvoicesState>
    with PaginationLoadingProvider<List<Invoice>> {
  PendingInvoicesController(
    this._repository,
  ) : super(const PendingInvoicesState());

  final InvoicesPaginationRepository _repository;

  Future<void> init() async {
    // TODO(georgeta): Filtrar por estado pendiente cuando se implemente en el BFMF
    await updateFilter(status: InvoiceStatus.draft);
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            pendingInvoices:
                const AsyncLoading<List<Invoice>>().copyWithPrevious(state.pendingInvoices),
          ),
        );
      },
      onDataLoaded: (pendingInvoices) {
        setStateSafe(
          () => state.copyWith(pendingInvoices: pendingInvoices),
        );
      },
    );
  }

  Future<void> updateFilter({
    required InvoiceStatus? status,
  }) async {
    _repository.updateFilter(
      status: status,
    );
    await refresh();
  }
}
