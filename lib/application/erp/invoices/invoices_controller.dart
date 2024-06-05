import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/invoices_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_filtered_pagination_repository.dart';

final invoicesControllerProvider =
    StateNotifierProvider.autoDispose<InvoicesController, InvoicesState>(
  (ref) => InvoicesController(
    ref.watch(invoicesPaginationRepositoryProvider),
  ),
);

class InvoicesController extends StateNotifier<InvoicesState>
    with FilteredPaginationLoadingProvider<List<Invoice>, InvoiceFilter> {
  InvoicesController(
    this._repository,
  ) : super(const InvoicesState());

  final InvoicesFilteredPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const InvoiceFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            invoices: const AsyncLoading<List<Invoice>>().copyWithPrevious(state.invoices),
          ),
        );
      },
      onDataLoaded: (invoices) {
        setStateSafe(
          () => state.copyWith(invoices: invoices),
        );
        setPendingInvoices();
      },
    );
  }

  void setPendingInvoices() {
    final pendingInvoices =
        state.invoices.value?.where((element) => element.status == InvoiceStatus.draft).toList();
    setStateSafe(
      () => state.copyWith(
        pendingInvoices: AsyncData(pendingInvoices ?? []),
      ),
    );
  }

  Future<void> applyFilters() async {
    final filter = super.filter?.copyWith(
          createdDateFrom: state.createdDateFrom,
          createdDateTo: state.createdDateTo,
          totalAmountFrom: state.totalAmountFrom,
          totalAmountTo: state.totalAmountTo,
          status: state.status,
        );
    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(
      () => state.copyWith(
        createdDateFrom: null,
        createdDateTo: null,
        totalAmountFrom: null,
        totalAmountTo: null,
        status: null,
      ),
    );
    await applyFilters();
  }

  void setStartDate(DateTime? startDate) {
    state = state.copyWith(createdDateFrom: startDate);
  }

  void setEndDate(DateTime? endDate) {
    state = state.copyWith(createdDateTo: endDate);
  }

  void setAmountFrom(double? amountFrom) {
    state = state.copyWith(totalAmountFrom: amountFrom);
  }

  void setAmountTo(double? amountTo) {
    state = state.copyWith(totalAmountTo: amountTo);
  }

  void setStatus(InvoiceStatus? status) {
    state = state.copyWith(status: status);
  }
}
