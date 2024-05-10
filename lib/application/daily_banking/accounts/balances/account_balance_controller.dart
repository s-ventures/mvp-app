import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/balances/account_balance_state.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/account_balances_repository.dart';

final accountBalanceControllerProvider =
    StateNotifierProvider<AccountBalanceController, AccountBalanceState>(
  (ref) =>
      AccountBalanceController(ref.watch(accountBalancesRepositoryProvider)),
);

class AccountBalanceController extends StateNotifier<AccountBalanceState> {
  AccountBalanceController(this._repository)
      : super(const AccountBalanceState());

  final AccountBalancesRepository _repository;

  Future<void> init(String accountId) async {
    final balance = await _repository.getAccountBalance(accountId: accountId);
    state = state.copyWith(
      balance: balance.fold(
        (l) => AsyncError(l, StackTrace.current),
        AsyncData.new,
      ),
    );
  }
}
