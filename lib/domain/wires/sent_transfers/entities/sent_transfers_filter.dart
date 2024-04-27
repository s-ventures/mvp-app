import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';

part 'sent_transfers_filter.freezed.dart';

@freezed
class SentTransfersFilter with _$SentTransfersFilter {
  const factory SentTransfersFilter({
    SentTransferType? type,
    DateTime? orderDateFrom,
    DateTime? orderDateTo,
    DateTime? valueDateFrom,
    DateTime? valueDateTo,
    String? concept,
    int? settlementAmountFrom,
    int? settlementAmountTo,
    int? foreignExchangeFrom,
    int? foreignExchangeTo,
    int? exchangeValueFrom,
    int? exchangeValueTo,
    int? instructedAmountFrom,
    int? instructedAmountTo,
    SentTransferStatusType? status,
    String? concept2,
    UniqueId? sentTransferId,
    String? beneficiaryName,
    DateTime? transferDateFrom,
    DateTime? transferDateTo,
  }) = _SentTransfersFilter;
}