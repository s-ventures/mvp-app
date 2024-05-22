import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_repository.dart';

final quotesPaginationRepositoryProvider = Provider<QuotesPaginationRepository>((ref) {
  return QuotesPaginationRepository(
    ref.watch(quotesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final pendingQuotesPaginationRepositoryProvider = Provider<QuotesPaginationRepository>((ref) {
  return QuotesPaginationRepository(
    ref.watch(quotesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class QuotesPaginationRepository extends PaginationListRepository<Quotation> {
  QuotesPaginationRepository(
    this._quotesRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final QuotesRepository _quotesRepository;
  final ContractsRepository _contractsRepository;
  QuotationFilter? _filter;
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
  Future<List<Quotation>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final quotes = await _quotesRepository.getQuotes(
      erpContractId: erpContractId,
      filter: _filter ?? const QuotationFilter(),
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return quotes.fold(
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
    QuotationStatus? status,
  }) {
    _filter = (_filter ?? const QuotationFilter()).copyWith(
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
