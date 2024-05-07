import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/extended_details/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_detail_of_charges_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'transfer_out_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferOutDto extends ExtendedDetailsDto {
  TransferOutDto({
    required this.senderReference,
    required this.type,
    required this.bankOperationCode,
    required this.senderBank,
    required this.accountId,
    required this.cusomerId,
    required this.orderDate,
    required this.valueDate,
    required this.concept,
    required this.settlementAmount,
    required this.settlementCurrencyCode,
    required this.foreignExchange,
    required this.exchangeValue,
    required this.detailsOfCharges,
    required this.instructedAmount,
    required this.instructedCurrencyCode,
    required this.senderBankFee,
    required this.correspondantFee,
    required this.senderCorrespondentBank,
    required this.intermediaryBank,
    required this.beneficiaryCorrespondentBank,
    required this.status,
    required this.movementNumber,
    required this.fileId,
    required this.concept2,
    required this.movementId,
    required this.sentTransferId,
    required this.periodicTransfer,
    required this.routingNumber,
    required this.beneficiaryBank,
    required this.beneficiaryAccount,
    required this.beneficiaryName,
    required this.beneficiaryAdress,
    required this.beneficiaryCountryCode2char,
    required this.beneficiaryBankFee,
    required this.senderPhone,
    required this.beneficiaryCity,
    required this.additionalInformationSwift,
    required this.transferDate,
    required this.identificationDocNumber,
    required this.swiftFee,
  });

  factory TransferOutDto.fromJson(Map<String, dynamic> json) =>
      _$TransferOutDtoFromJson(json);
  final SentTransferTypeDto? type;
  final String? senderReference;
  final String? bankOperationCode;
  final String? senderBank;
  final int accountId;
  final int cusomerId;
  @DateConverter()
  final DateTime? orderDate;
  @DateConverter()
  final DateTime? valueDate;
  final String concept;
  final double? settlementAmount;
  final String? settlementCurrencyCode;
  final double? foreignExchange;
  final double? exchangeValue;
  final TransferDetailOfChargesDto? detailsOfCharges;
  final double? instructedAmount;
  final String? instructedCurrencyCode;
  final double? senderBankFee;
  final double? correspondantFee;
  final String? senderCorrespondentBank;
  final String? intermediaryBank;
  final String? beneficiaryCorrespondentBank;
  final TransferStatusTypeDto status;
  final String? movementNumber;
  final String? fileId;
  final String? concept2;
  final int? movementId;
  final int sentTransferId;
  final bool? periodicTransfer;
  final String? routingNumber;
  final String? beneficiaryBank;
  final String? beneficiaryAccount;
  final String beneficiaryName;
  final String? beneficiaryAdress;
  final String? beneficiaryCountryCode2char;
  final double? beneficiaryBankFee;
  final String? senderPhone;
  final String? beneficiaryCity;
  final String? additionalInformationSwift;
  @DateConverter()
  final DateTime? transferDate;
  final String? identificationDocNumber;
  final String? swiftFee;

  @override
  Map<String, dynamic> toJson() => _$TransferOutDtoToJson(this);
}
