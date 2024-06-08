import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/pagination/i_pagination_filter.dart';

part 'sent_transfers_filter.freezed.dart';

@freezed
class SentTransfersFilter with _$SentTransfersFilter implements IPaginationFilter {
  @Implements<IPaginationFilter>()
  const factory SentTransfersFilter({
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    double? settlementAmountFrom,
    double? settlementAmountTo,
  }) = _SentTransfersFilter;
}
