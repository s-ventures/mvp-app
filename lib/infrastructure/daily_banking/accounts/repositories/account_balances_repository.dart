import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/entities/account_balance.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/failures/account_balance_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/repositories/i_account_balances_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/account_balances_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/account_balances_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/balances/account_balance_dto.dart';

final accountBalancesRepositoryProvider = Provider<AccountBalancesRepository>(
  (ref) => AccountBalancesRepository(
    remoteDataSource: AccountBalancesRemoteDataSource(
        ref.watch(accountBalancesRestClientProvider),),
  ),
);

class AccountBalancesRepository implements IAccountBalancesRepository {
  AccountBalancesRepository({
    required AccountBalancesRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final AccountBalancesRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AccountBalanceFailure, AccountBalance>> getAccountBalance({
    required String accountId,
  }) async {
    try {
      final balance = await _remoteDataSource.getAccountBalance(
        accountId: accountId,
      );
      return right(balance.toDomain());
    } catch (_) {
      return left(const AccountBalanceFailure.unexpected());
    }
  }
}
