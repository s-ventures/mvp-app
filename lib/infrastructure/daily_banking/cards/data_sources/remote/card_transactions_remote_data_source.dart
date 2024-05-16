import 'dart:convert';
import 'dart:io';

import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_upload_request_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/daily_banking/cards/card_transactions_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/date_card_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';

class CardTransactionsRemoteDataSource {
  CardTransactionsRemoteDataSource(this._restClient);

  final CardTransactionsRestClient _restClient;

  Future<PaginatedResponse<DateCardTransactionsDto>> getSimplifiedCardTransactions({
    required CardTransactionsFilterDto filterDto,
  }) async {
    try {
      return await _restClient.getSimplifiedCardTransactions(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }

  Future<DetailedCardTransactionDto> getDetailedCardTransaction({
    required String cardContractId,
    required String transactionId,
  }) async {
    try {
      final response = await _restClient.getDetailedCardTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<FileAttachmentDto> uploadFileAttachmentForTransaction({
    required String cardContractId,
    required String transactionId,
    required File file,
    required String fileName,
  }) async {
    try {
      final imageBytes = await file.readAsBytes();
      final encodedImage = base64.encode(imageBytes);

      final response = await _restClient.uploadFileAttachmentForTransaction(
        cardContractId: cardContractId,
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
    required String cardContractId,
    required String transactionId,
    required String fileId,
  }) async {
    try {
      return _restClient.removeFileAttachmentFromTransaction(
        cardContractId: cardContractId,
        transactionId: transactionId,
        fileId: fileId,
      );
    } catch (_) {
      rethrow;
    }
  }
}
