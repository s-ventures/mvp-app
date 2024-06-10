import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/repositories/i_contracts_repositoy.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_filter.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/repositories/i_expenses_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/repositories/expenses_repository.dart';

final expensesPaginationRepositoryProvider =
    Provider<IFilteredPaginationListRepository<Expense, ExpenseFilter>>((ref) {
  return ExpensesFilteredPaginationRepository(
    ref.watch(expensesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final pendingInvoicesPaginationRepositoryProvider =
    Provider<ExpensesFilteredPaginationRepository>((ref) {
  return ExpensesFilteredPaginationRepository(
    ref.watch(expensesRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class ExpensesFilteredPaginationRepository
    extends IFilteredPaginationListRepository<Expense, ExpenseFilter> {
  ExpensesFilteredPaginationRepository(
    this._expensesRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final IExpensesRepository _expensesRepository;
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
  Future<List<Expense>> fetchPage({
    required int page,
    required int pageSize,
    ExpenseFilter? filter,
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final expenses = await _expensesRepository.getExpenses(
      erpContractId: erpContractId,
      filter: filter ?? const ExpenseFilter(),
      page: page,
      pageSize: pageSize,
    );
    return expenses.fold(
      (l) => [],
      (r) => r,
    );
  }
}
