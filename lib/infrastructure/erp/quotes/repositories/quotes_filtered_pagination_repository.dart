import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/repositories/i_contracts_repositoy.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/repositories/i_quotes_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/repositories/quotes_repository.dart';

final quotesPaginationRepositoryProvider =
    Provider<IFilteredPaginationListRepository<Quotation, QuotationFilter>>((ref) {
  return QuotesFilteredPaginationRepository(
    ref.watch(quotesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final pendingQuotesPaginationRepositoryProvider =
    Provider<IFilteredPaginationListRepository<Quotation, QuotationFilter>>((ref) {
  return QuotesFilteredPaginationRepository(
    ref.watch(quotesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class QuotesFilteredPaginationRepository
    extends IFilteredPaginationListRepository<Quotation, QuotationFilter> {
  QuotesFilteredPaginationRepository(
    this._quotesRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final IQuotesRepository _quotesRepository;
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
  Future<List<Quotation>> fetchPage({
    required int page,
    required int pageSize,
    QuotationFilter? filter,
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final quotes = await _quotesRepository.getQuotes(
      erpContractId: erpContractId,
      filter: filter ?? const QuotationFilter(),
      page: page,
      pageSize: pageSize,
    );
    return quotes.fold(
      (l) => [],
      (r) => r,
    );
  }
}
