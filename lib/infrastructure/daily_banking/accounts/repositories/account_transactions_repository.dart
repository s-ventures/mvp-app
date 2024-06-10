import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/failures/detailed_account_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/failures/simplified_account_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/repositories/i_account_transactions_repository.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/account_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/data_sources/remote/account_transactions_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/detailed_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/simplified_account_transaction_dto.dart';

final accountTransactionsRepositoryProvider = Provider<IAccountTransactionsRepository>(
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
          Map<DateTime, List<SimplifiedAccountTransaction>>>> getSimplifiedAccountTransactions({
    required AccountTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
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
      return right({
        for (final e in response.data)
          const DateConverter().fromJson(e.date): e.transactions.map((e) => e.toDomain()).toList(),
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

  @override
  Future<Either<UploadFileFailure, FileAttachmentUploaded>> attachFileToTransaction({
    required String accountId,
    required String transactionId,
    required File file,
    required String fileName,
  }) async {
    try {
      final response = await _remoteDataSource.uploadFileAttachmentForTransaction(
        accountId: accountId,
        transactionId: transactionId,
        file: file,
        fileName: fileName,
      );
      return right(response.toDomain());
    } catch (_) {
      return left(const UploadFileFailure.unexpected());
    }
  }

  @override
  Future<Either<UploadFileFailure, void>> removeAttachmentFromTransaction({
    required String accountId,
    required String transactionId,
    required String attachmentId,
  }) async {
    try {
      await _remoteDataSource.removeAttachmentFromTransaction(
        accountId: accountId,
        transactionId: transactionId,
        fileId: attachmentId,
      );
      return right(null);
    } catch (_) {
      return left(const UploadFileFailure.unexpected());
    }
  }
}
