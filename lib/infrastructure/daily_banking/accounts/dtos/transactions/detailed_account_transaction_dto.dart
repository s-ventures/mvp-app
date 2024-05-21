// {
//   "movementId": 0,
//   "postingDate": "2024-03-15",
//   "valueDate": "2024-03-15",
//   "type": "OTHER",
//   "amount": 0,
//   "currencyCode": "string",
//   "description": "string",
//   "analyticsCategory": "string",
//   "userComments": "string",
//   "userCategory": "string",
//   "placeId": "string",
//   "accountId": 0,
//   "endBalance": 0,
//   "creditDebit": "CREDIT",
//   "detailFields": "string",
//   "visible": true,
//   "bankReceipt": true,
//   "originBranch": "string",
//   "originalAmount": 0,
//   "originalCurrencyCode": "string",
//   "assignmentDate": "2024-03-15",
//   "attachments": [
//     {
//       "movementAttachmentId": 0,
//       "movementId": 0,
//       "fileId": 0
//     }
//   ],
//   "extendedDetails": {},
//   "productType": "ACCOUNTS"
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/debit_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/direct_debit_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/tax_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/transfer_in_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/extended_transaction_details/transfer_out_transaction_details.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/cards/transactions/entities/detailed_card_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_info_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transaction_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/direct_debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/tax_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/transfer_in_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/transfer_out_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

part 'detailed_account_transaction_dto.freezed.dart';
part 'detailed_account_transaction_dto.g.dart';

@freezed
class DetailedAccountTransactionDto with _$DetailedAccountTransactionDto {
  const factory DetailedAccountTransactionDto({
    required int movementId,
    @DateConverter() required DateTime postingDate,
    @DateConverter() required DateTime valueDate,
    required AccountTransactionTypeDto type,
    required double amount,
    required String currencyCode,
    required String description,
    required String? analyticsCategory,
    required String? userComments,
    required String? userCategory,
    required String? placeId,
    // TODO(migalv): Hacer non-nullable de nuevo, el back-end está enviando null
    required int? accountId,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required double? endBalance,
    required String? detailFields,
    required bool? visible,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required bool? bankReceipt,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required String? originBranch,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required double? originalAmount,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required String? originalCurrencyCode,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    @DateConverter() required DateTime? assignmentDate,
    // TODO(migalv): Hacer non-nullable de nuevo (porque ahora nos llega null a veces)
    required List<FileAttachmentInfoDto>? attachments,
    @ExtendedDetailsConverter() required ExtendedDetailsDto? extendedDetails,
    required ProductTypeDto productType,
  }) = _DetailedAccountTransactionDto;

  factory DetailedAccountTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedAccountTransactionDtoFromJson(json);
}

extension DetailedAccountTransactionDtoX on DetailedAccountTransactionDto {
  DetailedAccountTransaction toDomain() {
    return DetailedAccountTransaction(
      id: UniqueId.fromUniqueString(movementId.toString()),
      category: userCategory ?? analyticsCategory ?? '',
      description: description,
      postingDate: postingDate,
      valueDate: valueDate,
      amount: amount,
      endBalance: endBalance ?? 0,
      originBranch: originBranch ?? '',
      detailFields: detailFields ?? '',
      userComments: userComments ?? '',
      bankReceipt: bankReceipt ?? false,
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      attachments: attachments?.map((a) => a.toDomain()).toList() ?? [],
      details: extendedDetails == null
          ? null
          : () {
              switch (extendedDetails.runtimeType) {
                case TransferOutDto:
                  final transferOutDto = extendedDetails! as TransferOutDto;
                  return TransferOutTransactionDetails(
                    sentTransferId: UniqueId.fromUniqueString(
                      transferOutDto.sentTransferId.toString(),
                    ),
                    senderReference: transferOutDto.senderReference,
                    type: transferOutDto.type?.toDomain(),
                    concept: transferOutDto.concept,
                    settlementAmount: transferOutDto.settlementAmount ?? 0,
                    valueDate: transferOutDto.valueDate,
                    orderDate: transferOutDto.orderDate,
                    beneficiaryName: transferOutDto.beneficiaryName,
                    beneficiaryAccount: transferOutDto.beneficiaryAccount ?? '',
                    concept2: transferOutDto.concept2 ?? '',
                  );
                case TransferInDto:
                  final transferInDto = extendedDetails! as TransferInDto;
                  return TransferInTransactionDetails(
                    receivedTransferId: UniqueId.fromUniqueString(
                      transferInDto.receivedTransferId.toString(),
                    ),
                    type: transferInDto.type?.toDomain(),
                    concept: transferInDto.concept,
                    settlementAmount: transferInDto.settlementAmount ?? 0,
                    valueDate: transferInDto.valueDate,
                    orderDate: transferInDto.orderDate,
                    senderName: transferInDto.senderName,
                    senderAccount: transferInDto.senderAccount ?? '',
                    concept2: transferInDto.concept2 ?? '',
                  );
                case TaxDto:
                  final taxDto = extendedDetails! as TaxDto;
                  return TaxTransactionDetails(
                    id: UniqueId.fromUniqueString(taxDto.taxId.toString()),
                    issuerName: taxDto.issuerName,
                    accrualDate: taxDto.accrualDate,
                    paymentDate: taxDto.paymentDate,
                    reference: taxDto.reference,
                    documentReference: taxDto.documentReference,
                  );
                case DebitDto:
                  final debitDto = extendedDetails! as DebitDto;
                  return DebitTransactionDetails(
                    debitId: UniqueId.fromUniqueString(debitDto.debitId.toString()),
                    amount: debitDto.amount,
                    issuer: debitDto.issuer,
                    issuerName: debitDto.issuerName,
                    identification: debitDto.identification,
                    dueDate: debitDto.dueDate,
                    paymentDate: debitDto.paymentDate,
                  );
                case DirectDebitDto:
                  final directDebitDto = extendedDetails! as DirectDebitDto;
                  return DirectDebitTransactionDetails(
                    directDebitId: UniqueId.fromUniqueString(
                      directDebitDto.directDebitId.toString(),
                    ),
                    issuer: directDebitDto.issuer,
                    debitReference: directDebitDto.debitReference,
                    returnDate: directDebitDto.returnDate,
                  );
                case DetailedCardTransactionDto:
                  final cardDto = extendedDetails! as DetailedCardTransactionDto;
                  return DetailedCardTransaction(
                    id: UniqueId.fromUniqueString(
                      cardDto.movementId.toString(),
                    ),
                    amount: cardDto.amount,
                    postingDate: cardDto.postingDate,
                    description: cardDto.description,
                    placeId: cardDto.placeId,
                    merchantName: cardDto.merchantName,
                    concept: cardDto.concept,
                  );
              }
            }(),
    );
  }
}
