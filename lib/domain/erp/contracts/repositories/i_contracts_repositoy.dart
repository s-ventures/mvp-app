import 'package:fpdart/fpdart.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/entities/customer_contract.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/failures/customer_contract_failure.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/failures/select_contract_failure.dart';

abstract class IContractsRepository {
  Future<Either<CustomerContractFailure, List<CustomerContract>>>
      getContracts();

  Future<Either<SelectContractFailure, Unit>> selectContract({
    required int contractId,
  });

  Stream<Option<UniqueId>> watchSelectedContract();
}
