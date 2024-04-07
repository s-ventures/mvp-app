import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/core/pagination/pagination_loading_provider.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/simplified/simplified_accounts_state.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/accounts_pagination_repository.dart';

final simplifiedAccountsControllerProvider = StateNotifierProvider<
    SimplifiedAccountsController, SimplifiedAccountsState>(
  (ref) => SimplifiedAccountsController(
    ref.watch(accountsPaginationRepositoryProvider),
  ),
);

class SimplifiedAccountsController
    extends StateNotifier<SimplifiedAccountsState>
    with PaginationLoadingProvider<List<SimplifiedAccount>> {
  SimplifiedAccountsController(this._repository)
      : super(const SimplifiedAccountsState());

  final AccountsPaginationRepository _repository;

  Future<void> init() async {
    initPagination(
      _repository,
      onDataLoading: () {
        setStateSafe(
          () => state.copyWith(
            accounts: const AsyncLoading<List<SimplifiedAccount>>()
                .copyWithPrevious(state.accounts),
          ),
        );
      },
      onDataLoaded: (accounts) {
        setStateSafe(
          () => state.copyWith(
            accounts: accounts,
          ),
        );
      },
    );
  }

  void selectAccount(UniqueId accountId) {
    _repository.selectAccount(accountId: accountId.toInt());
  }
}
