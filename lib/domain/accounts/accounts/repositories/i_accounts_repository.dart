import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/failures/detailed_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/failures/select_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/failures/simplified_account_failure.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

abstract class IAccountsRepository {
  Future<Either<SimplifiedAccountFailure, List<SimplifiedAccount>>> getSimplifiedAccounts({
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedAccountFailure, DetailedAccount>> getDetailedAccount({
    required int accountId,
  });

  Future<Either<SelectAccountFailure, Unit>> selectAccount({
    required int accountId,
  });

  Stream<Option<UniqueId>> watchSelectedAccount();
}
