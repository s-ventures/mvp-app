import 'package:freezed_annotation/freezed_annotation.dart';

part 'simplified_sent_transfer_failure.freezed.dart';

@freezed
class SimplifiedSentTransferFailure with _$SimplifiedSentTransferFailure {
  const factory SimplifiedSentTransferFailure.unexpected() = _Unexpected;
}
