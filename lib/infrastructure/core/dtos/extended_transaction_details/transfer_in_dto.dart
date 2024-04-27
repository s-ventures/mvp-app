// {
//     "type": "BASE",
//     "senderReference": null,
//     "bankOperationCode": null,
//     "senderBank": null,
//     "accountId": 1066,
//     "customerId": 214,
//     "orderDate": null,
//     "valueDate": null,
//     "concept": null,
//     "settlementAmount": null,
//     "settlementCurrencyCode": null,
//     "foreignExchange": null,
//     "exchangeValue": null,
//     "detailOfCharges": null,
//     "instructedAmount": null,
//     "instructedCurrencyCode": null,
//     "senderBankFee": null,
//     "correspondantFee": null,
//     "senderCorrespondentBank": null,
//     "intermediaryBank": null,
//     "beneficiaryCorrespondentBank": null,
//     "status": "RECEIVED",
//     "movementNumber": null,
//     "fileId": null,
//     "concept2": null,
//     "movementId": 1013208,
//     "receivedTransferId": 5,
//     "senderAccount": null,
//     "senderName": null,
//     "senderAddress": null,
//     "senderCountryCode2char": null,
//     "receiverBankFee": null,
//     "senderCity": null,
//     "reference": null
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';

part 'transfer_in_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferInDto extends ExtendedDetailsDto {
  TransferInDto({
    required this.senderReference,
  });

  factory TransferInDto.fromJson(Map<String, dynamic> json) =>
      _$TransferInDtoFromJson(json);

  final String senderReference;

  @override
  Map<String, dynamic> toJson() => _$TransferInDtoToJson(this);
}
