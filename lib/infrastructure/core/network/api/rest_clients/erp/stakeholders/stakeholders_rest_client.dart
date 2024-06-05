import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholders_filter_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'stakeholders_rest_client.g.dart';

final stakeholdersRestClientProvider = Provider<StakeholdersRestClient>((ref) {
  return StakeholdersRestClient(ref.watch(dioProvider));
});

@RestApi()
abstract class StakeholdersRestClient {
  factory StakeholdersRestClient(Dio dio) = _StakeholdersRestClient;

  @GET('/erp/agenda/v1/{erpContractId}/stakeholders/query')
  Future<PaginatedResponse<StakeholderDto>> getStakeholders({
    @Path('erpContractId') required String erpContractId,
    @Query('') required StakeholdersFilterDto filter,
  });
}
