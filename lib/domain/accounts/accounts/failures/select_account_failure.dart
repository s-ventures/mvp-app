import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_account_failure.freezed.dart';

@freezed
class SelectAccountFailure with _$SelectAccountFailure {
  const factory SelectAccountFailure.unexpected() = _Unexpected;
}
