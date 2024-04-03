import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_card_failure.freezed.dart';

@freezed
class SelectCardFailure with _$SelectCardFailure {
  const factory SelectCardFailure.unexpected() = _Unexpected;
}
