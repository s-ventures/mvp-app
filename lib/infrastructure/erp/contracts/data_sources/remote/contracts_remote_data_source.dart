import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/contracts_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/dtos/customer_contract_dto.dart';

class ContractsRemoteDataSource {
  ContractsRemoteDataSource(this._restClient);

  final ContractsRestClient _restClient;

  Future<List<CustomerContractDto>> getContracts() async {
    try {
      return await _restClient.getContracts();
    } catch (_) {
      rethrow;
    }
  }
}
