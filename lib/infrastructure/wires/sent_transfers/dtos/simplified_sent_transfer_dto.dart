import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/simplified_sent_transfer.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

// {
//     "type": "TRANSFER",
//     "baasTransferId": "string",
//     "senderBank": "string",
//     "accountId": 0,
//     "orderDate": "2024-04-25",
//     "valueDate": "2024-04-25",
//     "concept": "string",
//     "settlementAmount": 0,
//     "settlementCurrencyCode": "string",
//     "foreignExchange": 0,
//     "exchangeValue": 0,
//     "detailOfCharges": "SHA",
//     "instructedAmount": 0,
//     "instructedCurrencyCode": "string",
//     "status": "SENT",
//     "baasMovementId": "string",
//     "concept2": "string",
//     "movementId": 0,
//     "sentTransferId": 0,
//     "routingNumber": "string",
//     "beneficiaryBank": "string",
//     "beneficiaryName": "string",
//     "transferDate": "2024-04-25"
//   }

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
    required String? detailOfCharges,
    required double instructedAmount,
    required String instructedCurrencyCode,
    required SentTransferStatusTypeDto status,
    required String baasMovementId,
    required String? concept2,
    required int? movementId,
    required int? sentTransferId,
    required String? routingNumber,
    required String? beneficiaryBank,
    required String beneficiaryName,
    required DateTime? transferDate,
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