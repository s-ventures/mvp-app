import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/dio_provider.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/dtos/customer_contract_dto.dart';
import 'package:retrofit/http.dart';

part 'contracts_rest_client.g.dart';

final contractsRestClientProvider = Provider<ContractsRestClient>((ref) {
  return ContractsRestClient(ref.watch(dioProvider));
});

@RestApi()
abstract class ContractsRestClient {
  factory ContractsRestClient(Dio dio) = _ContractsRestClient;

  @GET('/erp/v1/contracts')
  Future<List<CustomerContractDto>> getContracts();
}
