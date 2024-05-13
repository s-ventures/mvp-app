import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/detailed_sent_transfer_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfers_filter_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/simplified_sent_transfer_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'sent_transfers_rest_client.g.dart';

final sentTransfersRestClientProvider = Provider<SentTransfersRestClient>(
  (ref) => SentTransfersRestClient(ref.watch(dioProvider)),
);

@RestApi()
abstract class SentTransfersRestClient {
  factory SentTransfersRestClient(Dio dio) = _SentTransfersRestClient;

  @GET('/wires/v1/sent-transfers/query')
  Future<PaginatedResponse<SimplifiedSentTransferDto>>
      getSimplifiedSentTransfers({
    @Query('') required SentTransfersFilterDto filter,
  });

  @GET('/wires/v1/sent-transfers/detailed/{sentTransferId}')
  Future<DetailedSentTransferDto> getDetailedSentTransfer({
    @Path('sentTransferId') required int sentTransferId,
  });
}
