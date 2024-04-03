import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/card_transactions_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/simplified_card_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:retrofit/retrofit.dart';

part 'card_transactions_rest_client.g.dart';

final cardTransactionsRestClientProvider =
    Provider<CardTransactionsRestClient>((ref) => CardTransactionsRestClient(ref.watch(dioProvider)));

@RestApi()
abstract class CardTransactionsRestClient {
  factory CardTransactionsRestClient(Dio dio) = _CardTransactionsRestClient;

  @GET('/cards/v1/query/transactions')
  Future<PaginatedResponse<SimplifiedCardTransactionDto>> getSimplifiedCardTransactions({
    @Query('') required CardTransactionsFilterDto filter,
  });
}
