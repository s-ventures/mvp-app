import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/simplified/simplified_accounts_state.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/repositories/i_accounts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/fake_accounts_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/fake_accounts_repository.dart';

final simplifiedAccountsControllerProvider =
    StateNotifierProvider<SimplifiedAccountsController, SimplifiedAccountsState>(
  (ref) => SimplifiedAccountsController(
    ref.watch(fakeAccountsPaginationRepositoryProvider),
    ref.watch(fakeAccountsRepositoryProvider),
  ),
);

class SimplifiedAccountsController extends StateNotifier<SimplifiedAccountsState>
    with PaginationLoadingProvider<List<SimplifiedAccount>> {
  SimplifiedAccountsController(this._paginatedRepository, this._repository)
      : super(const SimplifiedAccountsState());

  final IPaginationListRepository<SimplifiedAccount> _paginatedRepository;
  final IAccountsRepository _repository;

  Future<void> init() async {
    initPagination(
      _paginatedRepository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            accounts:
                const AsyncLoading<List<SimplifiedAccount>>().copyWithPrevious(state.accounts),
          ),
        );
      },
      onDataLoaded: (accounts) {
        setStateSafe(
          () => state.copyWith(
            accounts: accounts,
            selectedAccountIndex: state.selectedAccountIndex,
          ),
        );
      },
    );
  }

  void selectAccount(UniqueId accountId) {
    _repository.selectAccount(accountId: accountId.toInt());
  }

  void setSelectedAccountIndex(int index) {
    state = state.copyWith(selectedAccountIndex: index);
  }
}
