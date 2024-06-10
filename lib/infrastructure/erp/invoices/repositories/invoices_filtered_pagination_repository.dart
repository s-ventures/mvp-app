import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/repositories/i_contracts_repositoy.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/repositories/i_invoices_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_repository.dart';

final invoicesPaginationRepositoryProvider =
    Provider<IFilteredPaginationListRepository<Invoice, InvoiceFilter>>((ref) {
  return InvoicesFilteredPaginationRepository(
    ref.watch(invoicesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final pendingInvoicesPaginationRepositoryProvider =
    Provider<InvoicesFilteredPaginationRepository>((ref) {
  return InvoicesFilteredPaginationRepository(
    ref.watch(invoicesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class InvoicesFilteredPaginationRepository
    extends IFilteredPaginationListRepository<Invoice, InvoiceFilter> {
  InvoicesFilteredPaginationRepository(
    this._invoicesRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final IInvoicesRepository _invoicesRepository;
  final IContractsRepository _contractsRepository;
  int? _erpContractId;

  void _listenToSelectedContractChanges() {
    _contractsRepository.watchSelectedContract().listen((contractIdOption) {
      // No ERP contract has been selected.
      if (contractIdOption.isNone()) {
        // TODO(georgeta): hardcoded erp contract id
        _erpContractId = 1071;
      }

      // A contract has been previously selected. Update filter and refresh
      else if (contractIdOption.isSome()) {
        final contractId = contractIdOption.fold(() => null, (a) => a)?.toInt();
        if (contractId == null) return;
        _erpContractId = contractId;
      }
    });
  }

  @override
  Future<List<Invoice>> fetchPage({
    required int page,
    required int pageSize,
    InvoiceFilter? filter,
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final invoices = await _invoicesRepository.getInvoices(
      erpContractId: erpContractId,
      filter: filter ?? const InvoiceFilter(),
      page: page,
      pageSize: pageSize,
    );
    return invoices.fold(
      (l) => [],
      (r) => r,
    );
  }
}
