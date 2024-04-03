import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_storage_read_failure.freezed.dart';

@freezed
abstract class LocalStorageReadFailure with _$LocalStorageReadFailure {
  const factory LocalStorageReadFailure.valueNotFound() = _ValueNotFound;
  const factory LocalStorageReadFailure.typeMissmatch() = _TypeMissmatch;
  const factory LocalStorageReadFailure.unknown() = _Unknown;
}
