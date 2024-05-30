import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/invoices/simplified/simplified_invoices_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_pagination_repository.dart';

final simplifiedInvoicesControllerProvider =
    StateNotifierProvider.autoDispose<SimplifiedInvoicesController, SimplifiedInvoicesState>(
  (ref) => SimplifiedInvoicesController(
    ref.watch(invoicesPaginationRepositoryProvider),
  ),
);

class SimplifiedInvoicesController extends StateNotifier<SimplifiedInvoicesState>
    with PaginationLoadingProvider<List<Invoice>> {
  SimplifiedInvoicesController(
    this._repository,
  ) : super(const SimplifiedInvoicesState());

  final InvoicesPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
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
      },
    );
  }

  Future<void> updateFilter({
    UniqueId? id,
    UniqueId? stakeholderId,
    DateTime? createdDateFrom,
    DateTime? createdDateTo,
    DateTime? issueDateFrom,
    DateTime? issueDateTo,
    double? totalAmountFrom,
    double? totalAmountTo,
    String? query,
    InvoiceStatus? status,
  }) async {
    _repository.updateFilter(
      id: id,
      stakeholderId: stakeholderId,
      createdDateFrom: createdDateFrom,
      createdDateTo: createdDateTo,
      issueDateFrom: issueDateFrom,
      issueDateTo: issueDateTo,
      totalAmountFrom: totalAmountFrom,
      totalAmountTo: totalAmountTo,
      query: query,
      status: status,
    );
    await refresh();
  }
}
