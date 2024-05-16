import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/stakeholders/simplified/stakeholders_state.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/language_code_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/person_type_code.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/relation_type.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/repositories/stakeholders_pagination_repository.dart';

final stakeholdersControllerProvider =
    StateNotifierProvider<StakeholdersController, StakeholdersState>(
  (ref) => StakeholdersController(
    ref.watch(stakeholdersPaginationRepositoryProvider),
  ),
);

class StakeholdersController extends StateNotifier<StakeholdersState>
    with PaginationLoadingProvider<List<Stakeholder>> {
  StakeholdersController(
    this._repository,
  ) : super(const StakeholdersState());

  final StakeholdersPaginationRepository _repository;

  Future<void> init() async {
    await updateFilter();
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            stakeholders: const AsyncLoading<List<Stakeholder>>()
                .copyWithPrevious(state.stakeholders),
          ),
        );
      },
      onDataLoaded: (stakeholders) {
        setStateSafe(
          () => state.copyWith(stakeholders: stakeholders),
        );
      },
    );
  }

  Future<void> initFavoriteStakeholders() async {
    await updateFilter(isFavorite: true);
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            stakeholders: const AsyncLoading<List<Stakeholder>>()
                .copyWithPrevious(state.favoriteStakeholders),
          ),
        );
      },
      onDataLoaded: (stakeholders) {
        setStateSafe(
          () => state.copyWith(favoriteStakeholders: stakeholders),
        );
      },
    );
  }

  Future<void> updateFilter({
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
  }) async {
    _repository.updateFilter(
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
    await refresh();
  }
}
