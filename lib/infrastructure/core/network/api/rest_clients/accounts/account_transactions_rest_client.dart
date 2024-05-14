import 'package:dio/dio.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/accounts/date_account_transactions_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/detailed_account_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_upload_request_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_transactions_rest_client.g.dart';

final accountTransactionsRestClientProvider = Provider<AccountTransactionsRestClient>(
  (ref) => AccountTransactionsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class AccountTransactionsRestClient {
  factory AccountTransactionsRestClient(Dio dio) = _AccountTransactionsRestClient;

  @GET('/accounts/v1/query/transactions')
  Future<PaginatedResponse<DateAccountTransactionsDto>> getSimplifiedAccountTransactions({
    @Query('') required AccountTransactionsFilterDto filter,
  });

  @GET('/accounts/v1/{accountId}/transactions/{transactionId}')
  Future<DetailedAccountTransactionDto> getDetailedAccountTransaction({
    @Path('accountId') required String accountId,
    @Path('transactionId') required String transactionId,
  });

  @POST('/accounts/v1/{accountId}/transactions/{transactionId}/attachments')
  Future<FileAttachmentDto> uploadFileAttachmentForTransaction({
    @Path('accountId') required String accountId,
    @Path('transactionId') required String transactionId,
    @Body() required FileAttachmentUploadRequestDto body,
  });

  @DELETE('/accounts/v1/{accountId}/transactions/{transactionId}/attachments/{fileId}')
  Future<void> removeFileAttachmentFromTransaction({
    @Path('accountId') required String accountId,
    @Path('transactionId') required String transactionId,
    @Path('fileId') required String fileId,
  });
}
