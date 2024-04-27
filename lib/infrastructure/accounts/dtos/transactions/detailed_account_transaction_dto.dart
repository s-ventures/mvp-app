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
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/detailed_account_transaction.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transaction_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transaction_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';

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
    required int accountId,
    required double endBalance,
    required String? detailFields,
    required bool? visible,
    required bool bankReceipt,
    required String originBranch,
    required double originalAmount,
    required String originalCurrencyCode,
    @DateConverter() required DateTime assignmentDate,
    required List<TransactionAttachmentDto>? attachments,
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
      date: postingDate,
      amount: amount,
      endBalance: endBalance,
      originBranch: originBranch,
      detailFields: detailFields ?? '',
      userComments: userComments ?? '',
      bankReceipt: bankReceipt,
    );
  }
}
