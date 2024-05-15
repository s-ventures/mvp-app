import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/detailed_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/simplified_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/repositories/i_accounts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/accounts_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/local/accounts_local_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/accounts_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/detailed_account_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/simplified_account_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:rxdart/rxdart.dart';

final accountsRepositoryProvider = Provider<AccountsRepository>(
  (ref) => AccountsRepository(
    localDataSource: AccountsLocalDataSource(
      ref.watch(sharedPreferencesLocalStorageProvider),
    ),
    remoteDataSource:
        AccountsRemoteDataSource(ref.watch(accountsRestClientProvider)),
  ),
);

class AccountsRepository implements IAccountsRepository {
  AccountsRepository({
    required AccountsLocalDataSource localDataSource,
    required AccountsRemoteDataSource remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final AccountsLocalDataSource _localDataSource;
  final AccountsRemoteDataSource _remoteDataSource;
  final _selectedAccountId = BehaviorSubject.seeded(none<UniqueId>());

  @override
  Future<Either<SimplifiedAccountFailure, List<SimplifiedAccount>>>
      getSimplifiedAccounts({
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    try {
      final response = await _remoteDataSource.getSimplifiedAccounts(
        paginatedRequest: PaginatedRequest(
          pageNumber: page,
          pageSize: pageSize,
        ),
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      final accounts = response.data.map((e) => e.toDomain()).toList();
      return right(accounts);
    } catch (_) {
      return left(const SimplifiedAccountFailure.unexpected());
    }
  }

  @override
  Future<Either<SelectAccountFailure, Unit>> selectAccount({
    required int accountId,
  }) async {
    try {
      final result = await _localDataSource.saveSelectedAccountId(accountId);

      if (result.isRight()) {
        _selectedAccountId
            .add(some(UniqueId.fromUniqueString(accountId.toString())));
        return right(unit);
      } else {
        return left(const SelectAccountFailure.unexpected());
      }
    } catch (_) {
      return left(const SelectAccountFailure.unexpected());
    }
  }

  @override
  Stream<Option<UniqueId>> watchSelectedAccount() => _selectedAccountId.stream;

  @override
  Future<Either<DetailedAccountFailure, DetailedAccount>> getDetailedAccount({
    required int accountId,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedAccount(
        accountId: accountId.toString(),
      );
      final account = response.toDomain();
      return right(account);
    } catch (_) {
      return left(const DetailedAccountFailure.unexpected());
    }
  }
}
