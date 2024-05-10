import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_detail_of_charges_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

// {
//       "type": "BETWEEN_MY_ACCOUNTS",
//       "baasTransferId": "string",
//       "senderBank": "string",
//       "accountId": 0,
//       "orderDate": "2024-05-02",
//       "valueDate": "2024-05-02",
//       "concept": "string",
//       "settlementAmount": 0,
//       "settlementCurrencyCode": "string",
//       "foreignExchange": 0,
//       "exchangeValue": 0,
//       "detailOfCharges": "SHA",
//       "instructedAmount": 0,
//       "instructedCurrencyCode": "string",
//       "status": "SENT",
//       "baasMovementId": "string",
//       "concept2": "string",
//       "movementId": 0,
//       "executionDate": "2024-05-02T12:16:52.987Z",
//       "senderAccount": "string",
//       "sentTransferId": 0,
//       "routingNumber": "string",
//       "beneficiaryBank": "string",
//       "beneficiaryName": "string",
//       "transferDate": "2024-05-02",
//       "referenceDC": "string"
//     }

part 'simplified_sent_transfer_dto.freezed.dart';
part 'simplified_sent_transfer_dto.g.dart';

@freezed
class SimplifiedSentTransferDto with _$SimplifiedSentTransferDto {
  const factory SimplifiedSentTransferDto({
    required SentTransferTypeDto type,
    required String? baasTransferId,
    required String? senderBank,
    required int accountId,
    required DateTime orderDate,
    required DateTime? valueDate,
    required String concept,
    required double? settlementAmount,
    required String? settlementCurrencyCode,
    required double? foreignExchange,
    required double? exchangeValue,
    required TransferDetailOfChargesDto? detailOfCharges,
    required double? instructedAmount,
    required String? instructedCurrencyCode,
    required TransferStatusTypeDto status,
    required String? baasMovementId,
    required String? concept2,
    required int? movementId,
    required DateTime? executionDate,
    required String? senderAccount,
    required int? sentTransferId,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryName,
    required DateTime? transferDate,
    required String? referenceDC,
  }) = _SimplifiedSentTransferDto;

  factory SimplifiedSentTransferDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedSentTransferDtoFromJson(json);
}

extension SimplifiedSentTransferDtoX on SimplifiedSentTransferDto {
  SimplifiedSentTransfer toDomain() {
    return SimplifiedSentTransfer(
      id: UniqueId.fromUniqueString(sentTransferId.toString()),
      beneficiaryName: beneficiaryName,
      concept: concept,
      settlementAmount: settlementAmount ?? 0,
    );
  }
}
