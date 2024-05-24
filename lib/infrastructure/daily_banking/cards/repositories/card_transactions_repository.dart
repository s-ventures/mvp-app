import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/failures/detailed_card_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/failures/simplified_card_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/repositories/i_card_transactions_repository.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/cards/card_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/data_sources/remote/card_transactions_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/simplified_card_transaction_dto.dart';

final cardTransactionsRepositoryProvider = Provider<CardTransactionsRepository>(
  (ref) => CardTransactionsRepository(
    remoteDataSource: CardTransactionsRemoteDataSource(
      ref.watch(cardTransactionsRestClientProvider),
    ),
  ),
);

class CardTransactionsRepository implements ICardTransactionsRepository {
  CardTransactionsRepository({
    required CardTransactionsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final CardTransactionsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<SimplifiedCardTransactionFailure, Map<DateTime, List<SimplifiedCardTransaction>>>>
      getSimplifiedCardTransactions({
    required CardTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
  }) async {
    final filterDto = CardTransactionsFilterDto.fromDomain(
      filter: filter,
      pageSize: pageSize,
      pageNumber: page,
    );
    try {
      final response = await _remoteDataSource.getSimplifiedCardTransactions(
        filterDto: filterDto,
      );
      return right({
        for (final e in response.data)
          const DateConverter().fromJson(e.date): e.transactions.map((e) => e.toDomain()).toList(),
      });
    } catch (_) {
      return left(const SimplifiedCardTransactionFailure.unexpected());
    }
  }

  @override
  Future<Either<DetailedCardTransactionFailure, DetailedCardTransaction>>
      getDetailedCardTransaction({
    required String cardContractId,
    required String transactionId,
  }) async {
    try {
      final response = await _remoteDataSource.getDetailedCardTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
      );
      return right(response.toDomain());
    } catch (_) {
      return left(const DetailedCardTransactionFailure.unexpected());
    }
  }

  @override
  Future<Either<UploadFileFailure, FileAttachmentUploaded>> attachFileToCardTransaction({
    required String cardContractId,
    required String transactionId,
    required File file,
    required String fileName,
  }) async {
    try {
      final response = await _remoteDataSource.uploadFileAttachmentForTransaction(
        cardContractId: cardContractId,
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
  Future<Either<UploadFileFailure, void>> removeAttachmentFromCardTransaction({
    required String cardContractId,
    required String transactionId,
    required String attachmentId,
  }) async {
    try {
      await _remoteDataSource.removeAttachmentFromTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
        fileId: attachmentId,
      );
      return right(null);
    } catch (_) {
      return left(const UploadFileFailure.unexpected());
    }
  }
}
