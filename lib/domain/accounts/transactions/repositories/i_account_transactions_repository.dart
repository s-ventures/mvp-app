import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/failures/detailed_account_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/failures/simplified_account_transaction_failure.dart';

// ignore: one_member_abstracts
abstract class IAccountTransactionsRepository {
  Future<
          Either<SimplifiedAccountTransactionFailure,
              Map<DateTime, List<SimplifiedAccountTransaction>>>>
      getSimplifiedAccountTransactions({
    required AccountTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedAccountTransactionFaillure, DetailedAccountTransaction>>
      getDetailedAccountTransaction({
    required String accountId,
    required String transactionId,
  });
}
