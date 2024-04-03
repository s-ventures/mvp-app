// {
//   "accountId": 0,
//   "date": "2024-03-15T19:31:54.394Z",
//   "balance": 0,
//   "withholding": 0,
//   "overdraftLimit": 0,
//   "overdraftAmount": 0,
//   "unpaidBalance": 0
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/balances/entities/account_balance.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'account_balance_dto.freezed.dart';
part 'account_balance_dto.g.dart';

@freezed
class AccountBalanceDto with _$AccountBalanceDto {
  const factory AccountBalanceDto({
    required int accountId,
    required String? date,
    required double? balance,
    required double? withholding,
    required double? overdraftLimit,
    required double? overdraftAmount,
    required double? unpaidBalance,
  }) = _AccountBalanceDto;

  factory AccountBalanceDto.fromJson(Map<String, dynamic> json) => _$AccountBalanceDtoFromJson(json);
}

extension AccountBalanceDtoX on AccountBalanceDto {
  AccountBalance toDomain() {
    return AccountBalance(
      id: UniqueId.fromUniqueString(accountId.toString()),
      balance: balance ?? 0,
      availableBalance: (balance ?? 0) - (withholding ?? 0),
    );
  }
}
