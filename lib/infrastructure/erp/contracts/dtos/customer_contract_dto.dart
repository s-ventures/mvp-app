// {
//   "alias": "string",
//   "contract": {
//     "contractId": 0,
//     "productCode": "string",
//     "startDate": "2024-05-10",
//     "endDate": "2024-05-10"
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/entities/customer_contract.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/contracts/dtos/contract_dto.dart';

part 'customer_contract_dto.freezed.dart';

@freezed
class CustomerContractDto with _$CustomerContractDto {
  const factory CustomerContractDto({
    required String alias,
    required ContractDto contract,
  }) = _CustomerContractDto;
}

extension CustomerContractDtoX on CustomerContractDto {
  CustomerContract toDomain() {
    return CustomerContract(
      alias: alias,
      contract: contract.toDomain(),
    );
  }
}
