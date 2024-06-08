import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/repositories/i_accounts_repository.dart';

class AccountsPaginationRepository extends IPaginationListRepository<SimplifiedAccount> {
  AccountsPaginationRepository(this._repository);

  final IAccountsRepository _repository;

  @override
  Future<List<SimplifiedAccount>?> fetchPage({
    required int page,
    required int pageSize,
  }) async {
    final accounts = await _repository.getSimplifiedAccounts(
      page: page,
      pageSize: pageSize,
    );
    return accounts.fold((l) => null, (r) => r);
  }

  Future<Either<SelectAccountFailure, Unit>> selectAccount({
    required int accountId,
  }) =>
      _repository.selectAccount(accountId: accountId);
}
