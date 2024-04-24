import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transaction_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/detailed_card_transaction_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/direct_debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/extended_details_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/tax_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/transfer_in_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/extended_transaction_details/transfer_out_dto.dart';

class ExtendedDetailsConverter
    implements JsonConverter<ExtendedDetailsDto, Map<String, dynamic>> {
  const ExtendedDetailsConverter();

  @override
  ExtendedDetailsDto fromJson(Map<String, dynamic> json) {
    final type = AccountTransactionTypeDto.values
        .byName(json['transactionType'] as String);

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
  Map<String, dynamic> toJson(ExtendedDetailsDto object) => object.toJson();
}
