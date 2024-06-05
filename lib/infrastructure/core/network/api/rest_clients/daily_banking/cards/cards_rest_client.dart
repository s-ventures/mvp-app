import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/detailed_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/cards/simplified_card_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cards_rest_client.g.dart';

final cardsRestClientProvider = Provider<CardsRestClient>(
  (ref) => CardsRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class CardsRestClient {
  factory CardsRestClient(Dio dio) = _CardsRestClient;

  @GET('/cards/v1/query/cards')
  Future<PaginatedResponse<SimplifiedCardDto>> getSimplifiedCards({
    @Query('') required PaginatedRequest paginatedRequest,
  });

  @GET('/cards/v1/query/cards/detailed')
  Future<PaginatedResponse<DetailedCardDto>> getDetailedCard({
    @Query('') required PaginatedRequest paginatedRequest,
  });
}
