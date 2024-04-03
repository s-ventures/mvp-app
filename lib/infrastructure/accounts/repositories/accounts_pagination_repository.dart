import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/repositories/accounts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/pagination_repository.dart';

final accountsPaginationRepositoryProvider = Provider<AccountsPaginationRepository>(
  (ref) => AccountsPaginationRepository(ref.watch(accountsRepositoryProvider)),
);

class AccountsPaginationRepository extends PaginationRepository<SimplifiedAccount> {
  AccountsPaginationRepository(this._repository);

  final AccountsRepository _repository;

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

  Future<Either<SelectAccountFailure, Unit>> selectAccount({required int accountId}) =>
      _repository.selectAccount(accountId: accountId);
}
