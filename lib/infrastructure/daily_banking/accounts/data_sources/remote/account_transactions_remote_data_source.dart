import 'dart:convert';
import 'dart:io';

import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_upload_request_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/accounts/account_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/date_account_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/detailed_account_transaction_dto.dart';

class AccountTransactionsRemoteDataSource {
  AccountTransactionsRemoteDataSource(this._restClient);

  final AccountTransactionsRestClient _restClient;

  Future<PaginatedResponse<DateAccountTransactionsDto>>
      getSimplifiedAccountTransactions({
    required AccountTransactionsFilterDto filterDto,
  }) async {
    try {
      final response =
          await _restClient.getSimplifiedAccountTransactions(filter: filterDto);
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedAccountTransactionDto> getDetailedAccountTransaction({
    required String accountId,
    required String transactionId,
  }) async {
    try {
      final response = await _restClient.getDetailedAccountTransaction(
        accountId: accountId,
        transactionId: transactionId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<FileAttachmentDto> uploadFileAttachmentForTransaction({
    required String accountId,
    required String transactionId,
    required File file,
    required String fileName,
  }) async {
    try {
      final imageBytes = await file.readAsBytes();
      final encodedImage = base64.encode(imageBytes);

      final response = await _restClient.uploadFileAttachmentForTransaction(
        accountId: accountId,
        transactionId: transactionId,
        body: FileAttachmentUploadRequestDto(
          content: encodedImage,
          fileName: fileName,
        ),
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<void> removeAttachmentFromTransaction({
    required String accountId,
    required String transactionId,
    required String fileId,
  }) async {
    try {
      return _restClient.removeFileAttachmentFromTransaction(
        accountId: accountId,
        transactionId: transactionId,
        fileId: fileId,
      );
    } catch (_) {
      rethrow;
    }
  }
}
