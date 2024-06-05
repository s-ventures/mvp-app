import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/filtered/filtered_pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/erp/stakeholders/favorite/favorite_stakeholders_state.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholder.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/stakeholders_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/repositories/stakeholders_filtered_pagination_repository.dart';

final favoriteStakeholdersControllerProvider =
    StateNotifierProvider<FavoriteStakeholdersController, FavoriteStakeholdersState>(
  (ref) => FavoriteStakeholdersController(
    ref.watch(favoriteStakeholdersPaginationRepositoryProvider),
  ),
);

class FavoriteStakeholdersController extends StateNotifier<FavoriteStakeholdersState>
    with FilteredPaginationLoadingProvider<List<Stakeholder>, StakeholdersFilter> {
  FavoriteStakeholdersController(
    this._repository,
  ) : super(const FavoriteStakeholdersState());

  final StakeholdersPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      initialFilter: const StakeholdersFilter(isFavorite: true),
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            favoriteStakeholders: const AsyncLoading<List<Stakeholder>>()
                .copyWithPrevious(state.favoriteStakeholders),
          ),
        );
      },
      onDataLoaded: (favoriteStakeholders) {
        setStateSafe(
          () => state.copyWith(favoriteStakeholders: favoriteStakeholders),
        );
      },
    );
  }
}
