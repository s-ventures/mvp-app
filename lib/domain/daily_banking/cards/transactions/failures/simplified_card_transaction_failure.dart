import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_card_transaction_failure.freezed.dart';

@freezed
class SimplifiedCardTransactionFailure with _$SimplifiedCardTransactionFailure {
  const factory SimplifiedCardTransactionFailure.unexpected() = _Unexpected;
}
