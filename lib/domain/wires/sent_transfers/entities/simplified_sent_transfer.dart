import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';

part 'simplified_sent_transfer.freezed.dart';

@freezed
class SimplifiedSentTransfer with _$SimplifiedSentTransfer {
  const factory SimplifiedSentTransfer({
    required UniqueId id,
    required String beneficiaryName,
    required String concept,
    required double settlementAmount,
  }) = _SimplifiedSentTransfer;
}
