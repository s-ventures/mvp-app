import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/cards/detailed_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/cards/simplified_card_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/cards/cards_rest_client.dart';

class CardsRemoteDataSource {
  CardsRemoteDataSource(this._restClient);

  final CardsRestClient _restClient;

  Future<PaginatedResponse<SimplifiedCardDto>> getSimplifiedCards({
    required PaginatedRequest paginatedRequest,
  }) async {
    try {
      final response = await _restClient.getSimplifiedCards(
        paginatedRequest: paginatedRequest,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }

  Future<PaginatedResponse<DetailedCardDto>> getDetailedCard({
    required PaginatedRequest paginatedRequest,
  }) async {
    try {
      final response =
          await _restClient.getDetailedCard(paginatedRequest: paginatedRequest);
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
