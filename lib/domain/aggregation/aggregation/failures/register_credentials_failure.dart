import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_credentials_failure.freezed.dart';

@freezed
class RegisterCredentialsFailure with _$RegisterCredentialsFailure {
  const factory RegisterCredentialsFailure.unexpected() = _Unexpected;
}
