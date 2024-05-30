import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/repositories/invoices_repository.dart';

final invoicesPaginationRepositoryProvider = Provider<InvoicesPaginationRepository>((ref) {
  return InvoicesPaginationRepository(
    ref.watch(invoicesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final pendingInvoicesPaginationRepositoryProvider = Provider<InvoicesPaginationRepository>((ref) {
  return InvoicesPaginationRepository(
    ref.watch(invoicesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class InvoicesPaginationRepository extends PaginationListRepository<Invoice> {
  InvoicesPaginationRepository(
    this._invoicesRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final InvoicesRepository _invoicesRepository;
  final ContractsRepository _contractsRepository;
  InvoiceFilter? _filter;
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
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final invoices = await _invoicesRepository.getInvoices(
      erpContractId: erpContractId,
      filter: _filter ?? const InvoiceFilter(),
      page: page,
      pageSize: pageSize,
    );
    return invoices.fold(
      (l) => [],
      (r) => r,
    );
  }

  void updateFilter({
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
  }) {
    _filter = (_filter ?? const InvoiceFilter()).copyWith(
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
  }
}
