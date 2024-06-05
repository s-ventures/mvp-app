import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'account_balance.freezed.dart';

@freezed
class AccountBalance with _$AccountBalance {
  const factory AccountBalance({
    required UniqueId id,
    required double balance,
    required double availableBalance,
  }) = _AccountBalance;
}
