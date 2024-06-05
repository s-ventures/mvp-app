import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/filtered_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/repositories/stakeholders_repository.dart';

final stakeholdersPaginationRepositoryProvider = Provider<StakeholdersPaginationRepository>((ref) {
  return StakeholdersPaginationRepository(
    ref.watch(stakeholdersRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

final favoriteStakeholdersPaginationRepositoryProvider =
    Provider<StakeholdersPaginationRepository>((ref) {
  return StakeholdersPaginationRepository(
    ref.watch(stakeholdersRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class StakeholdersPaginationRepository
    extends FilteredPaginationListRepository<Stakeholder, StakeholdersFilter> {
  StakeholdersPaginationRepository(
    this._stakeholdersRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final StakeholdersRepository _stakeholdersRepository;
  final ContractsRepository _contractsRepository;
  String? _erpContractId;

  void _listenToSelectedContractChanges() {
    _contractsRepository.watchSelectedContract().listen((contractIdOption) {
      // No ERP contract has been selected.
      if (contractIdOption.isNone()) {
        // TODO(sergio): hardcoded erp contract id
        _erpContractId = 1071.toString();
      }

      // A contract has been previously selected. Update filter and refresh
      else if (contractIdOption.isSome()) {
        final contractId = contractIdOption.fold(() => null, (a) => a)?.getOrElse('');
        if (contractId?.isEmpty ?? true) return;

        _erpContractId = contractId;
      }
    });
  }

  @override
  Future<List<Stakeholder>> fetchPage({
    required int page,
    required int pageSize,
    StakeholdersFilter? filter,
  }) async {
    final erpContractId = _erpContractId;
    if (erpContractId == null) return [];

    final stakeholders = await _stakeholdersRepository.getStakeholders(
      erpContractId: erpContractId,
      filter: filter ?? const StakeholdersFilter(),
      page: page,
      pageSize: pageSize,
    );
    return stakeholders.fold(
      (l) => [],
      (r) => r,
    );
  }
}
