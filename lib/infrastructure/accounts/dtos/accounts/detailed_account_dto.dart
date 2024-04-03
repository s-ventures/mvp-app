// {
//   "accountId": 0,
//   "entity": "string",
//   "branch": "string",
//   "number": "string",
//   "status": "PENDING_APPROVAL",
//   "createDate": "2024-03-29",
//   "activateDate": "2024-03-29",
//   "closureDate": "2024-03-29",
//   "currencyCode": "string",
//   "dispositionType": "INDIVIDUAL",
//   "dispositionNumber": "string",
//   "lastOperationDate": "2024-03-29",
//   "balance": {
//     "accountId": 0,
//     "date": "2024-03-29T00:31:29.613Z",
//     "balance": 0,
//     "withholding": 0,
//     "overdraftLimit": 0,
//     "overdraftAmount": 0,
//     "unpaidBalance": 0
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/accounts/entities/detailed_account.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/accounts/account_disposition_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/accounts/account_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/balances/account_balance_dto.dart';

part 'detailed_account_dto.freezed.dart';
part 'detailed_account_dto.g.dart';

@freezed
class DetailedAccountDto with _$DetailedAccountDto {
  const factory DetailedAccountDto({
    required int accountId,
    required String entity,
    required String branch,
    required String number,
    required AccountStatusDto status,
    required String createDate,
    required String activateDate,
    required String? closureDate,
    required String currencyCode,
    required AccountDispositionTypeDto dispositionType,
    required String dispositionNumber,
    required String lastOperationDate,
    required AccountBalanceDto balance,
    required String? accountHolder,
  }) = _DetailedAccountDto;

  factory DetailedAccountDto.fromJson(Map<String, dynamic> json) => _$DetailedAccountDtoFromJson(json);
}

extension DetailedAccountDtoX on DetailedAccountDto {
  DetailedAccount toDomain() {
    return DetailedAccount(
      id: UniqueId.fromUniqueString(accountId.toString()),
      number: number,
      balance: balance.toDomain(),
      currencyCode: currencyCode,
      accountHolder: accountHolder ?? '',
      entity: entity,
    );
  }
}
