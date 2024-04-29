// {
//   "type": "TRANSFER",
//   "baasTransferId": "string",
//   "bankOperationCode": "CRED",
//   "senderBank": "string",
//   "accountId": 0,
//   "customerId": 0,
//   "orderDate": "2024-04-29",
//   "valueDate": "2024-04-29",
//   "concept": "string",
//   "settlementAmount": 0,
//   "settlementCurrencyCode": "string",
//   "foreignExchange": 0,
//   "exchangeValue": 0,
//   "detailOfCharges": "SHA",
//   "instructedAmount": 0,
//   "instructedCurrencyCode": "string",
//   "status": "SENT",
//   "baasMovementId": "string",
//   "concept2": "string",
//   "movementId": 0,
//   "sentTransferId": 0,
//   "periodicTransfer": true,
//   "routingNumber": "string",
//   "beneficiaryBank": "string",
//   "beneficiaryAccount": "string",
//   "beneficiaryName": "string",
//   "transferDate": "2024-04-29"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/detailed_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'detailed_sent_transfer_dto.freezed.dart';
part 'detailed_sent_transfer_dto.g.dart';

@freezed
class DetailedSentTransferDto with _$DetailedSentTransferDto {
  const factory DetailedSentTransferDto({
    required int sentTransferId,
    required SentTransferTypeDto type,
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
    required SentTransferStatusTypeDto status,
    required String baasMovementId,
    required String? concept2,
    required int? movementId,
    required bool periodicTransfer,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required DateTime? transferDate,
  }) = _DetailedSentTransferDto;

  factory DetailedSentTransferDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedSentTransferDtoFromJson(json);
}

extension DetailedSentTransferDtoX on DetailedSentTransferDto {
  DetailedSentTransfer toDomain() {
    return DetailedSentTransfer(
      id: UniqueId.fromUniqueString(sentTransferId.toString()),
      type: type.toDomain(),
      baasTransferId: baasTransferId,
      bankOperationCode: bankOperationCode,
      senderBank: senderBank,
      accountId: accountId,
      customerId: customerId,
      orderDate: orderDate,
      valueDate: valueDate,
      concept: concept,
      settlementAmount: settlementAmount,
      settlementCurrencyCode: settlementCurrencyCode,
      foreignExchange: foreignExchange,
      exchangeValue: exchangeValue,
      detailsOfCharges: detailsOfCharges,
      instructedAmount: instructedAmount,
      instructedCurrencyCode: instructedCurrencyCode,
      status: status.toDomain(),
      baasMovementId: baasMovementId,
      concept2: concept2,
      movementId: movementId,
      periodicTransfer: periodicTransfer,
      routingNumber: routingNumber,
      beneficiaryBank: beneficiaryBank,
      beneficiaryAccount: beneficiaryAccount,
      beneficiaryName: beneficiaryName,
      transferDate: transferDate,
    );
  }
}
