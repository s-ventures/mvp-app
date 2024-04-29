import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_status_type.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';

part 'detailed_sent_transfer.freezed.dart';

@freezed
class DetailedSentTransfer with _$DetailedSentTransfer {
  const factory DetailedSentTransfer({
    required UniqueId id,
    required SentTransferType type,
    required String? baasTransferId,
    required String? bankOperationCode,
    required String? senderBank,
    required int accountId,
    required int customerId,
    required DateTime orderDate,
    required DateTime? valueDate,
    required String concept,
    required double? settlementAmount,
    required String? settlementCurrencyCode,
    required double? foreignExchange,
    required double? exchangeValue,
    required String? detailsOfCharges,
    required double instructedAmount,
    required String instructedCurrencyCode,
    required SentTransferStatusType status,
    required String baasMovementId,
    required String? concept2,
    required int? movementId,
    required bool periodicTransfer,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required DateTime? transferDate,
  }) = _DetailedSentTransfer;
}
