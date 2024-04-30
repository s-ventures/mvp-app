// {
//     "taxId": 13,
//     "amount": 450.0,
//     "currencyCode": "EUR",
//     "issuer": "0046271",
//     "taxFormCode": "100",
//     "reference": "12338400833",
//     "identificationNumber": "29292992",
//     "accrualDate": "2024-03-20",
//     "documentReference": "IRPF13458938",
//     "specificData": "JY78948",
//     "issuerName": "AEAT",
//     "taxFormDescription": "IRPF",
//     "bankReference": "NRC1234568",
//     "nrc": "NRC123456",
//     "paymentDate": "2024-03-27",
//     "movementNumber": "10",
//     "movementId": 1013216,
//     "accountId": 1066,
//     "movementType": "TAX"
// },

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

part 'tax_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TaxDto extends ExtendedDetailsDto {
  TaxDto({
    required this.taxId,
    required this.amount,
    required this.currencyCode,
    required this.issuer,
    required this.taxFormCode,
    required this.reference,
    required this.identificationNumber,
    required this.accrualDate,
    required this.documentReference,
    required this.specificData,
    required this.issuerName,
    required this.taxFormDescription,
    required this.bankReference,
    required this.nrc,
    required this.paymentDate,
    required this.movementNumber,
    required this.movementId,
    required this.accountId,
  });

  factory TaxDto.fromJson(Map<String, dynamic> json) => _$TaxDtoFromJson(json);

  final int taxId;
  final double amount;
  final String currencyCode;
  final String issuer;
  final String taxFormCode;
  final String reference;
  final String identificationNumber;
  @DateConverter()
  final DateTime accrualDate;
  final String documentReference;
  final String specificData;
  final String issuerName;
  final String taxFormDescription;
  final String bankReference;
  final String nrc;
  @DateConverter()
  final DateTime paymentDate;
  final String movementNumber;
  final int movementId;
  final int accountId;

  @override
  Map<String, dynamic> toJson() => _$TaxDtoToJson(this);
}
