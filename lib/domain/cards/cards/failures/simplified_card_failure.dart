import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_card_failure.freezed.dart';

@freezed
class SimplifiedCardFailure with _$SimplifiedCardFailure {
  const factory SimplifiedCardFailure.unexpected() = _Unexpected;
}
