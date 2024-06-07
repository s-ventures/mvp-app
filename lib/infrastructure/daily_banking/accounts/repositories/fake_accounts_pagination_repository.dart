import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/repositories/i_accounts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_list_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/accounts_pagination_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/repositories/fake_accounts_repository.dart';

final fakeAccountsPaginationRepositoryProvider = Provider<FakeAccountsPaginationRepository>((ref) {
  return FakeAccountsPaginationRepository(ref.watch(fakeAccountsRepositoryProvider));
});

class FakeAccountsPaginationRepository extends PaginationListRepository<SimplifiedAccount>
    implements AccountsPaginationRepository {
  FakeAccountsPaginationRepository(this._repository);

  final IAccountsRepository _repository;

  @override
  Future<List<SimplifiedAccount>?> fetchPage({required int page, required int pageSize}) async {
    final accounts = await _repository.getSimplifiedAccounts(
      page: page,
      pageSize: pageSize,
    );
    return accounts.fold((l) => null, (r) => r);
  }

  @override
  Future<Either<SelectAccountFailure, Unit>> selectAccount({
    required int accountId,
  }) =>
      _repository.selectAccount(accountId: accountId);
}
