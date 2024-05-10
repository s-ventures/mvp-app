// {
//   "accountId": 0,
//   "entity": "string",
//   "number": "string",
//   "status": "PENDING_APPROVAL",
//   "createDate": "2024-03-18",
//   "currencyCode": "string",
//   "balance": {
//     "accountId": 0,
//     "date": "2024-03-18T09:58:48.735Z",
//     "balance": 0,
//     "withholding": 0,
//     "overdraftLimit": 0,
//     "overdraftAmount": 0,
//     "unpaidBalance": 0
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/accounts/entities/simplified_account.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/accounts/account_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/balances/account_balance_dto.dart';

part 'simplified_account_dto.freezed.dart';
part 'simplified_account_dto.g.dart';

@freezed
class SimplifiedAccountDto with _$SimplifiedAccountDto {
  const factory SimplifiedAccountDto({
    required int accountId,
    required String? entity,
    required String? number,
    required AccountStatusDto status,
    required String? createDate,
    required String currencyCode,
    required AccountBalanceDto balance,
  }) = _SimplifiedAccountDto;

  factory SimplifiedAccountDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedAccountDtoFromJson(json);
}

extension SimplifiedAccountDtoX on SimplifiedAccountDto {
  SimplifiedAccount toDomain() {
    return SimplifiedAccount(
      id: UniqueId.fromUniqueString(accountId.toString()),
      entity: entity ?? '',
      status: status.toDomain(),
      currencyCode: currencyCode,
      balance: balance.toDomain(),
    );
  }
}
