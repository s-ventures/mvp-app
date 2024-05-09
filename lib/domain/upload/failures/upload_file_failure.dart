import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_failure.freezed.dart';

@freezed
class UploadFileFailure with _$UploadFileFailure {
  const factory UploadFileFailure.uploadFailed() = _FileExceedsMaxSize;
  const factory UploadFileFailure.fileExceedsMaxSize() = _FileExceedsMaxSize;
  const factory UploadFileFailure.unexpected() = _Unexpected;
}
