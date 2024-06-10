// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/detailed_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/failures/simplified_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/repositories/i_accounts_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/in_memory_store/daily_banking/test_accounts.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/in_memory_store/in_memory_store.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/local/accounts_local_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:rxdart/rxdart.dart';

final fakeAccountsRepositoryProvider = Provider<IAccountsRepository>((ref) {
  return FakeAccountsRepository(
    localDataSource: AccountsLocalDataSource(ref.watch(sharedPreferencesLocalStorageProvider)),
    simplifiedAccounts: InMemoryStore<List<SimplifiedAccount>>(List.from(kTestSimplifiedAccounts)),
    detailedAccounts: InMemoryStore<List<DetailedAccount>>(List.from(kTestDetailedAccounts)),
  );
});

class FakeAccountsRepository implements IAccountsRepository {
  FakeAccountsRepository({
    required AccountsLocalDataSource localDataSource,
    required InMemoryStore<List<SimplifiedAccount>> simplifiedAccounts,
    required InMemoryStore<List<DetailedAccount>> detailedAccounts,
  })  : _localDataSource = localDataSource,
        _simplifiedAccounts = simplifiedAccounts,
        _detailedAccounts = detailedAccounts;

  final InMemoryStore<List<SimplifiedAccount>> _simplifiedAccounts;
  final InMemoryStore<List<DetailedAccount>> _detailedAccounts;
  final AccountsLocalDataSource _localDataSource;

  final _selectedAccountId = BehaviorSubject.seeded(none<UniqueId>());

  @override
  Future<Either<DetailedAccountFailure, DetailedAccount>> getDetailedAccount({
    required int accountId,
  }) async {
    return right(_detailedAccounts.value.firstWhere((element) => element.id.toInt() == accountId));
  }

  @override
  Future<Either<SimplifiedAccountFailure, List<SimplifiedAccount>>> getSimplifiedAccounts({
    int page = 0,
    int pageSize = 10,
  }) async {
    final start = page * pageSize;
    final end = min(page * pageSize + pageSize, _simplifiedAccounts.value.length);

    if (start >= _simplifiedAccounts.value.length) {
      return right(<SimplifiedAccount>[]);
    }
    return right(_simplifiedAccounts.value.sublist(start, end));
  }

  @override
  Future<Either<SelectAccountFailure, Unit>> selectAccount({
    required int accountId,
  }) async {
    try {
      final result = await _localDataSource.saveSelectedAccountId(accountId);

      if (result.isRight()) {
        _selectedAccountId.add(some(UniqueId.fromUniqueString(accountId.toString())));
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
}
