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
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_info_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transaction_type_dto.dart';

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
      valueDate: valueDate,
      postingDate: postingDate,
      amount: amount,
      endBalance: endBalance ?? 0,
      originBranch: originBranch ?? '',
      detailFields: detailFields ?? '',
      userComments: userComments ?? '',
      bankReceipt: bankReceipt,
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      attachments: attachments?.map((a) => a.toDomain()).toList() ?? [],
      details: null,
    );
  }
}