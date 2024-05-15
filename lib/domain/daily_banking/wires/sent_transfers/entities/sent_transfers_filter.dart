import 'package:freezed_annotation/freezed_annotation.dart';

part 'sent_transfers_filter.freezed.dart';

@freezed
class SentTransfersFilter with _$SentTransfersFilter {
  const factory SentTransfersFilter({
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    int? settlementAmountFrom,
    int? settlementAmountTo,
  }) = _SentTransfersFilter;
}
