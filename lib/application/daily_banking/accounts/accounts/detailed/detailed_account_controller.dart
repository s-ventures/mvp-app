import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/core/extensions/riverpod_extensions.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/accounts/detailed/detailed_account_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/accounts_repository.dart';

final detailedAccountControllerProvider = StateNotifierProvider<DetailedAccountController, DetailedAccountState>(
  (ref) => DetailedAccountController(
    ref.watch(accountsRepositoryProvider),
  ),
);

class DetailedAccountController extends StateNotifier<DetailedAccountState> {
  DetailedAccountController(this._repository) : super(const DetailedAccountState());

  final AccountsRepository _repository;

  Future<void> init(String accountId) async {
    try {
      final accountOrFailure = await _repository.getDetailedAccount(accountId: int.parse(accountId));

      setStateSafe(
        () => state = accountOrFailure.fold(
          (l) => state.copyWith(account: AsyncError(l, StackTrace.current)),
          (r) => state.copyWith(account: AsyncData(r)),
        ),
      );
    } catch (e) {
      state = state.copyWith(account: AsyncError(e, StackTrace.current));
    }
  }
}
