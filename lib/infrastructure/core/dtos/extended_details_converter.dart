import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/extension/enum_extension.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transaction_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/direct_debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/tax_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/transfer_in_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/extended_details/transfer_out_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/cards/dtos/transactions/detailed_card_transaction_dto.dart';

class ExtendedDetailsConverter
    implements JsonConverter<ExtendedDetailsDto?, Map<String, dynamic>> {
  const ExtendedDetailsConverter();

  @override
  ExtendedDetailsDto? fromJson(Map<String, dynamic> json) {
    final typeString = json['movementType'] as String?;
    if (typeString == null) {
      return null;
    }
    final type =
        AccountTransactionTypeDto.values.byScreamingCaseName(typeString);

    return switch (type) {
      AccountTransactionTypeDto.transferIn => TransferInDto.fromJson(json),
      AccountTransactionTypeDto.transferOut => TransferOutDto.fromJson(json),
      AccountTransactionTypeDto.tax => TaxDto.fromJson(json),
      AccountTransactionTypeDto.debit => DebitDto.fromJson(json),
      AccountTransactionTypeDto.directDebit => DirectDebitDto.fromJson(json),
      AccountTransactionTypeDto.card =>
        DetailedCardTransactionDto.fromJson(json),
      _ => throw UnimplementedError('Unknown type: $type'),
    };
  }

  @override
  Map<String, dynamic> toJson(ExtendedDetailsDto? object) =>
      object?.toJson() ?? {};
}
