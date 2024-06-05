import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_account_transaction_failure.freezed.dart';

@freezed
class SimplifiedAccountTransactionFailure with _$SimplifiedAccountTransactionFailure {
  const factory SimplifiedAccountTransactionFailure.unexpected() =
      _SimpleAccountTransactionFailureUnexpected;
}
