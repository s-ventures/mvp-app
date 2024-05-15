import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/detailed_account_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/simplified_account_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'accounts_rest_client.g.dart';

final accountsRestClientProvider = Provider<AccountsRestClient>(
  (ref) => AccountsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class AccountsRestClient {
  factory AccountsRestClient(Dio dio) = _AccountsRestClient;

  @GET('/accounts/v1/query/accounts')
  Future<PaginatedResponse<SimplifiedAccountDto>> getSimplifiedAccounts({
    @Query('') required PaginatedRequest paginatedRequest,
  });

  @GET('/accounts/v1/{accountId}')
  Future<DetailedAccountDto> getDetailedAccount({
    @Path('accountId') required String accountId,
  });
}
