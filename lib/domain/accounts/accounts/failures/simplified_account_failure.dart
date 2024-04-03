import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_account_failure.freezed.dart';

@freezed
class SimplifiedAccountFailure with _$SimplifiedAccountFailure {
  const factory SimplifiedAccountFailure.unexpected() = _Unexpected;
}
