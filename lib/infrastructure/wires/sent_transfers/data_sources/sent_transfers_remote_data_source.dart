import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/wires/sent_transfers_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfers_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/simplified_sent_transfer_dto.dart';

class SentTransfersRemoteDataSource {
  SentTransfersRemoteDataSource(this._restClient);

  final SentTransfersRestClient _restClient;

  Future<PaginatedResponse<SimplifiedSentTransferDto>>
      getSimplifiedSentTransfers({
    required SentTransfersFilterDto filterDto,
  }) {
    try {
      return _restClient.getSimplifiedSentTransfers(filter: filterDto);
    } catch (_) {
      rethrow;
    }
  }
}
