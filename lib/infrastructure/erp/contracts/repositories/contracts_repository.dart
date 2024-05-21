import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/entities/customer_contract.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/failures/customer_contract_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/failures/select_contract_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/repositories/i_contracts_repositoy.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/rest_clients/erp/contracts_rest_client.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/data_sources/local/contracts_local_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/data_sources/remote/contracts_remote_data_source.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/dtos/customer_contract_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/local_storage/repositories/shared_preferences_local_storage.dart';
import 'package:rxdart/rxdart.dart';

final contractsRepositoryProvider = Provider<ContractsRepository>((ref) {
  return ContractsRepository(
    localDataSource: ContractsLocalDataSource(
      ref.watch(sharedPreferencesLocalStorageProvider),
    ),
    remoteDataSource: ContractsRemoteDataSource(ref.watch(contractsRestClientProvider)),
  );
});

class ContractsRepository implements IContractsRepository {
  ContractsRepository({
    required ContractsLocalDataSource localDataSource,
    required ContractsRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final ContractsLocalDataSource _localDataSource;
  final ContractsRemoteDataSource _remoteDataSource;
  final _selectedContractId = BehaviorSubject.seeded(none<UniqueId>());

  @override
  Future<Either<CustomerContractFailure, List<CustomerContract>>> getContracts() async {
    try {
      final response = await _remoteDataSource.getContracts();
      final contracts = response.map((e) => e.toDomain()).toList();
      return right(contracts);
    } catch (_) {
      return left(const CustomerContractFailure.unexpected());
    }
  }

  @override
  Future<Either<SelectContractFailure, Unit>> selectContract({
    required int contractId,
  }) async {
    try {
      final result = await _localDataSource.saveSelectedContractId(contractId);

      if (result.isRight()) {
        _selectedContractId.add(some(UniqueId.fromUniqueString(contractId.toString())));
        return right(unit);
      }
      return left(const SelectContractFailure.unexpected());
    } catch (_) {
      return left(const SelectContractFailure.unexpected());
    }
  }

  @override
  Stream<Option<UniqueId>> watchSelectedContract() => _selectedContractId.stream;
}
