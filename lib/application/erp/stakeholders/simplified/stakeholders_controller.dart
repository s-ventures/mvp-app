import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/stakeholders/simplified/stakeholders_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/repositories/stakeholders_filtered_pagination_repository.dart';

final stakeholdersControllerProvider =
    StateNotifierProvider<StakeholdersController, StakeholdersState>(
  (ref) => StakeholdersController(
    ref.watch(stakeholdersPaginationRepositoryProvider),
  ),
);

class StakeholdersController extends StateNotifier<StakeholdersState>
    with FilteredPaginationLoadingProvider<List<Stakeholder>, StakeholdersFilter> {
  StakeholdersController(
    this._repository,
  ) : super(const StakeholdersState());

  final StakeholdersPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const StakeholdersFilter(),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            stakeholders:
                const AsyncLoading<List<Stakeholder>>().copyWithPrevious(state.stakeholders),
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

  Future<void> applyFilters() async {
    // TODO(georgeta): Revisar los filtros de Contactos
    final filter = super.filter?.copyWith(
          isFavorite: state.isFavorite,
        );

    if (filter == null) return;

    await updateFilter(filter);
  }

  Future<void> resetFilters() async {
    setStateSafe(() => state.copyWith(isFavorite: null));
    await applyFilters();
  }

  void setFavorite({bool? isFavorite}) {
    state = state.copyWith(isFavorite: isFavorite);
    applyFilters();
  }
}
