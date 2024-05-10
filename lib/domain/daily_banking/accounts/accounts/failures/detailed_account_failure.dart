import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_account_failure.freezed.dart';

@freezed
class DetailedAccountFailure with _$DetailedAccountFailure {
  const factory DetailedAccountFailure.unexpected() = _Unexpected;
}
