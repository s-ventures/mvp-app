import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/card_transactions_filter.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/simplified_card_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/failures/detailed_card_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/failures/simplified_card_transaction_failure.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';
import 'package:manifiesto_mvp_app/domain/upload/failures/upload_file_failure.dart';

abstract class ICardTransactionsRepository {
  Future<Either<SimplifiedCardTransactionFailure, Map<DateTime, List<SimplifiedCardTransaction>>>>
      getSimplifiedCardTransactions({
    required CardTransactionsFilter filter,
    int page = 0,
    int pageSize = 10,
    void Function(int totalPages, int totalElements)? onPaginationInfo,
  });

  Future<Either<DetailedCardTransactionFailure, DetailedCardTransaction>>
      getDetailedCardTransaction({
    required String cardContractId,
    required String transactionId,
  });

  Future<Either<UploadFileFailure, FileAttachmentUploaded>> attachFileToCardTransaction({
    required String cardContractId,
    required String transactionId,
    required File file,
    required String fileName,
  });

  Future<Either<UploadFileFailure, void>> removeAttachmentFromCardTransaction({
    required String cardContractId,
    required String transactionId,
    required String attachmentId,
  });
}
