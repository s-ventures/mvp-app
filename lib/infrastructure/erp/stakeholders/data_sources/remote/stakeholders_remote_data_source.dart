import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_response.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/stakeholders_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholder_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/stakeholders_filter_dto.dart';

class StakeholdersRemoteDataSource {
  StakeholdersRemoteDataSource(this._restClient);

  final StakeholdersRestClient _restClient;

  Future<PaginatedResponse<StakeholderDto>> getStakeholders({
    required String erpContractId,
    required StakeholdersFilterDto filterDto,
  }) async {
    try {
      final response = await _restClient.getStakeholders(
        erpContractId: erpContractId,
        filter: filterDto,
      );
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
