import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_balance_failure.freezed.dart';

@freezed
class AccountBalanceFailure with _$AccountBalanceFailure {
  const factory AccountBalanceFailure.unexpected() = _AccountBalanceFailureUnexpected;
}
