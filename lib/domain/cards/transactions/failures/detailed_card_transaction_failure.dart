import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_card_transaction_failure.freezed.dart';

@freezed
class DetailedCardTransactionFailure with _$DetailedCardTransactionFailure {
  const factory DetailedCardTransactionFailure.unexpected() = _Unexpected;
}
