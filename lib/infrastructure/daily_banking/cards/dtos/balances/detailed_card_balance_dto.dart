// {
//   "cardId": 0,
//   "date": "2024-03-16T16:28:31.675Z",
//   "atmWithdrawalLimit": 0,
//   "atmDailyLimit": 0,
//   "atmMonthlyLimit": 0,
//   "posOrderLimit": 0,
//   "posDailyLimit": 0,
//   "posMonthlyLimit": 0
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_card_balance_dto.freezed.dart';
part 'detailed_card_balance_dto.g.dart';

@freezed
class DetailedCardBalanceDto with _$DetailedCardBalanceDto {
  const factory DetailedCardBalanceDto({
    required int cardId,
    required String date,
    required double atmWithdrawalLimit,
    required double atmDailyLimit,
    required double atmMonthlyLimit,
    required double posOrderLimit,
    required double posDailyLimit,
    required double posMonthlyLimit,
  }) = _DetailedCardBalanceDto;

  factory DetailedCardBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedCardBalanceDtoFromJson(json);
}
