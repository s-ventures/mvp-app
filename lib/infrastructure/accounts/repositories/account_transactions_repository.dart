import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/failures/detailed_account_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/failures/simplified_account_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/repositories/i_account_transactions_repository.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/data_sources/remote/account_transactions_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/detailed_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/simplified_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/accounts/account_transactions_rest_client.dart';

final accountTransactionsRepositoryProvider =
    Provider<AccountTransactionsRepository>(
  (ref) => AccountTransactionsRepository(
    remoteDataSource: AccountTransactionsRemoteDataSource(
      ref.watch(accountTransactionsRestClientProvider),
    ),
  ),
);

class AccountTransactionsRepository implements IAccountTransactionsRepository {
  AccountTransactionsRepository({
    required AccountTransactionsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final AccountTransactionsRemoteDataSource _remoteDataSource;

  @override
  Future<
          Either<SimplifiedAccountTransactionFailure,
              Map<DateTime, List<SimplifiedAccountTransaction>>>>
      getSimplifiedAccountTransactions({
    required AccountTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  }) async {
    final filterDto = AccountTransactionsFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedAccountTransactions(
        filterDto: filterDto,
      );
      onPaginationInfo?.call(response.totalPages, response.totalElements);
      return right({
        for (final e in response.data)
          const DateConverter().fromJson(e.date):
              e.transactions.map((e) => e.toDomain()).toList(),
      });
    } catch (_) {
      return left(const SimplifiedAccountTransactionFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedAccountTransactionFaillure, DetailedAccountTransaction>>
      getDetailedAccountTransaction({
    required String accountId,
    required String transactionId,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedAccountTransaction(
        accountId: accountId,
        transactionId: transactionId,
      );
      return right(response.toDomain());
    } catch (_) {
      return left(const DetailedAccountTransactionFaillure.unexpected());
    }
  }
}
