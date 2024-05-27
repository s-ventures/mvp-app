import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/filtered/pagination_filter.dart';

part 'sent_transfers_filter.freezed.dart';

@freezed
class SentTransfersFilter with _$SentTransfersFilter implements PaginationFilter {
  @Implements<PaginationFilter>()
  const factory SentTransfersFilter({
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    double? settlementAmountFrom,
    double? settlementAmountTo,
  }) = _SentTransfersFilter;
}
