import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/entities/account_balance.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/balances/failures/account_balance_failure.dart';

// ignore: one_member_abstracts
abstract class IAccountBalancesRepository {
  Future<Either<AccountBalanceFailure, AccountBalance>> getAccountBalance({
    required String accountId,
  });
}
