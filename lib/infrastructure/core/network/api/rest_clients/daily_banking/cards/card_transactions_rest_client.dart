import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_upload_request_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/date_card_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'card_transactions_rest_client.g.dart';

final cardTransactionsRestClientProvider = Provider<CardTransactionsRestClient>(
  (ref) => CardTransactionsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class CardTransactionsRestClient {
  factory CardTransactionsRestClient(Dio dio) = _CardTransactionsRestClient;

  @GET('/cards/v1/query/transactions')
  Future<PaginatedResponse<DateCardTransactionsDto>> getSimplifiedCardTransactions({
    @Query('') required CardTransactionsFilterDto filter,
  });

  @GET('/cards/v1/{cardContractId}/transactions/{transactionId}')
  Future<DetailedCardTransactionDto> getDetailedCardTransaction({
    @Path('cardContractId') required String cardContractId,
    @Path('transactionId') required String transactionId,
  });

  @POST('/cards/v1/{cardContractId}/transactions/{transactionId}/attachments')
  Future<FileAttachmentDto> uploadFileAttachmentForTransaction({
    @Path('cardContractId') required String cardContractId,
    @Path('transactionId') required String transactionId,
    @Body() required FileAttachmentUploadRequestDto body,
  });

  @DELETE('/cards/v1/{cardContractId}/transactions/{transactionId}/attachments/{fileId}')
  Future<void> removeFileAttachmentFromTransaction({
    @Path('cardContractId') required String cardContractId,
    @Path('transactionId') required String transactionId,
    @Path('fileId') required String fileId,
  });
}
