import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_card_failure.freezed.dart';

@freezed
class DetailedCardFailure with _$DetailedCardFailure {
  const factory DetailedCardFailure.unexpected() = _Unexpected;
}
