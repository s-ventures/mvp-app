import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transfer_detail_of_charges.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transfer_status_type.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfer_type.dart';

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
    required TransferDetailOfCharges? detailsOfCharges,
    required double? instructedAmount,
    required String? instructedCurrencyCode,
    required TransferStatusType status,
    required String? baasMovementId,
    required String? concept2,
    required int? movementId,
    required DateTime? executionDate,
    required String? senderAccount,
    required bool periodicTransfer,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required DateTime? transferDate,
    required String? referenceDC,
    required String accountNumber,
  }) = _DetailedSentTransfer;
}
