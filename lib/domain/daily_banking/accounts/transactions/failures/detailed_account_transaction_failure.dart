import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_account_transaction_failure.freezed.dart';

@freezed
class DetailedAccountTransactionFaillure with _$DetailedAccountTransactionFaillure {
  const factory DetailedAccountTransactionFaillure.unexpected() = _Unexpected;
}
