// {
//   "type": "BETWEEN_MY_ACCOUNTS",
//   "baasTransferId": "string",
//   "bankOperationCode": "CRED",
//   "senderBank": "string",
//   "accountId": 0,
//   "customerId": 0,
//   "orderDate": "2024-05-02",
//   "valueDate": "2024-05-02",
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
//   "executionDate": "2024-05-02T13:15:57.082Z",
//   "senderAccount": "string",
//   "sentTransferId": 0,
//   "periodicTransfer": true,
//   "routingNumber": "string",
//   "beneficiaryBank": "string",
//   "beneficiaryAccount": "string",
//   "beneficiaryName": "string",
//   "transferDate": "2024-05-02",
//   "referenceDC": "string"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/detailed_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_detail_of_charges_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'detailed_sent_transfer_dto.freezed.dart';
part 'detailed_sent_transfer_dto.g.dart';

@freezed
class DetailedSentTransferDto with _$DetailedSentTransferDto {
  const factory DetailedSentTransferDto({
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
    required TransferDetailOfChargesDto? detailsOfCharges,
    required double? instructedAmount,
    required String? instructedCurrencyCode,
    required TransferStatusTypeDto status,
    required String? baasMovementId,
    required String? concept2,
    required int? movementId,
    required DateTime? executionDate,
    required String? senderAccount,
    required int sentTransferId,
    required bool periodicTransfer,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryAccount,
    required String beneficiaryName,
    required DateTime? transferDate,
    required String? referenceDC,
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
      detailsOfCharges: detailsOfCharges?.toDomain(),
      instructedAmount: instructedAmount,
      instructedCurrencyCode: instructedCurrencyCode,
      status: status.toDomain(),
      baasMovementId: baasMovementId,
      concept2: concept2,
      movementId: movementId,
      executionDate: executionDate,
      senderAccount: senderAccount,
      periodicTransfer: periodicTransfer,
      routingNumber: routingNumber,
      beneficiaryBank: beneficiaryBank,
      beneficiaryAccount: beneficiaryAccount,
      beneficiaryName: beneficiaryName,
      transferDate: transferDate,
      referenceDC: referenceDC,
    );
  }
}
