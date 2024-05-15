import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_sent_transfer_failure.freezed.dart';

@freezed
class DetailedSentTransferFailure with _$DetailedSentTransferFailure {
  const factory DetailedSentTransferFailure.unexpected() = _Unexpected;
}
