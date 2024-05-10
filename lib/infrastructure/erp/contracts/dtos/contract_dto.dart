// {
//   "contractId": 0,
//   "productCode": "string",
//   "startDate": "2024-05-10",
//   "endDate": "2024-05-10",
//   "customerContract": [
//     {
//       "customerContractId": 0,
//       "personId": 0,
//       "roleType": "HOLDER",
//       "roleTypeSequence": 0,
//       "alias": "string",
//       "contract": "string"
//     }
//   ]
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/contracts/entities/contract.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'contract_dto.freezed.dart';
part 'contract_dto.g.dart';

@freezed
class ContractDto with _$ContractDto {
  const factory ContractDto({
    required int contractId,
    required String productCode,
    @DateConverter() required DateTime startDate,
    @DateConverter() required DateTime endDate,
  }) = _ContractDto;

  factory ContractDto.fromJson(Map<String, dynamic> json) =>
      _$ContractDtoFromJson(json);
}

extension ContractDtoX on ContractDto {
  Contract toDomain() {
    return Contract(
      id: UniqueId.fromUniqueString(contractId.toString()),
      startDate: startDate,
      endDate: endDate,
    );
  }
}
