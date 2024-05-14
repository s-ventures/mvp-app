import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/repositories/contracts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/repositories/stakeholders_repository.dart';

final stakeholdersPaginationRepositoryProvider =
    Provider<StakeholdersPaginationRepository>((ref) {
  return StakeholdersPaginationRepository(
    ref.watch(stakeholdersRepositoryProvider),
    ref.watch(contractsRepositoryProvider),
  );
});

class StakeholdersPaginationRepository
    extends PaginationListRepository<Stakeholder> {
  StakeholdersPaginationRepository(
    this._stakeholdersRepository,
    this._contractsRepository,
  ) {
    _listenToSelectedContractChanges();
  }

  final StakeholdersRepository _stakeholdersRepository;
  final ContractsRepository _contractsRepository;
  StakeholdersFilter? _filter;
  String? _erpContractId;

  void _listenToSelectedContractChanges() {
    _contractsRepository.watchSelectedContract().listen((contractIdOption) {
      // No ERP contract has been selected.
      if (contractIdOption.isNone()) {
        // TODO(sergio): hardcoded erp contract id
        _erpContractId = 1071.toString();
        _filter = const StakeholdersFilter();
      }

      // A contract has been previously selected. Update filter and refresh
      else if (contractIdOption.isSome()) {
        final contractId =
            contractIdOption.fold(() => null, (a) => a)?.getOrElse('');
        if (contractId?.isEmpty ?? true) return;

        _erpContractId = contractId;
      }
    });
  }

  @override
  Future<List<Stakeholder>> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final filter = _filter;
    final erpContractId = _erpContractId;
    if (filter == null || erpContractId == null) return [];

    final stakeholders = await _stakeholdersRepository.getStakeholders(
      erpContractId: erpContractId,
      filter: filter,
      page: page,
      pageSize: pageSize,
      onPaginationInfo: onPaginationInfo,
    );
    return stakeholders.fold(
      (l) => [],
      (r) => r,
    );
  }

  void updateFilter({
    UniqueId? stakeholderId,
    PersonTypeCode? personTypeCode,
    String? fullName,
    LanguageCodeType? languageCodeType,
    RelationType? relationType,
    DateTime? createDateFrom,
    DateTime? createDateTo,
    DocumentTypeCode? documentTypeCode,
    String? documentNumber,
    String? additionalInfo,
    bool? isFavorite,
  }) {
    _filter = _filter?.copyWith(
      stakeholderId: stakeholderId,
      personTypeCode: personTypeCode,
      fullName: fullName,
      languageCodeType: languageCodeType,
      relationType: relationType,
      createDateFrom: createDateFrom,
      createDateTo: createDateTo,
      documentTypeCode: documentTypeCode,
      documentNumber: documentNumber,
      additionalInfo: additionalInfo,
      isFavorite: isFavorite,
    );
  }
}
