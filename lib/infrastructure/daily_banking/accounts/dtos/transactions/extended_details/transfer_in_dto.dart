import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_detail_of_charges_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_status_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'transfer_in_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferInDto extends ExtendedDetailsDto {
  TransferInDto({
    required this.type,
    required this.baasTransferId,
    required this.senderReference,
    required this.bankOperationCode,
    required this.senderBank,
    required this.accountId,
    required this.customerId,
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
    required this.receivedTransferId,
    required this.senderAccount,
    required this.senderName,
    required this.senderAddress,
    required this.senderCountryCode2char,
    required this.receiverBankFee,
    required this.senderCity,
    required this.reference,
  });

  factory TransferInDto.fromJson(Map<String, dynamic> json) =>
      _$TransferInDtoFromJson(json);
  final SentTransferTypeDto? type;
  final String baasTransferId;
  final String? senderReference;
  final String? bankOperationCode;
  final String? senderBank;
  final int accountId;
  final int customerId;
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
  final int movementId;
  final int receivedTransferId;
  final String? senderAccount;
  final String senderName;
  final String? senderAddress;
  final String? senderCountryCode2char;
  final double? receiverBankFee;
  final String? senderCity;
  final String? reference;

  @override
  Map<String, dynamic> toJson() => _$TransferInDtoToJson(this);
}
