import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/accounts/transactions/entities/simplified_account_transaction.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/product_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/daily_banking/accounts/dtos/transactions/account_transaction_type_dto.dart';

part 'simplified_account_transaction_dto.freezed.dart';
part 'simplified_account_transaction_dto.g.dart';

@freezed
class SimplifiedAccountTransactionDto with _$SimplifiedAccountTransactionDto {
  const factory SimplifiedAccountTransactionDto({
    required int movementId,
    @DateConverter() required DateTime postingDate,
    @DateConverter() required DateTime valueDate,
    required AccountTransactionTypeDto type,
    required double amount,
    required double endBalance,
    required String currencyCode,
    required String description,
    required String? analyticsCategory,
    required String? userCategory,
    required int accountId,
    required String originBranch,
    required ProductTypeDto productType,
  }) = _SimplifiedAccountTransactionDto;

  factory SimplifiedAccountTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$SimplifiedAccountTransactionDtoFromJson(json);
}

extension SimplifiedAccountTransactionDtoX on SimplifiedAccountTransactionDto {
  SimplifiedAccountTransaction toDomain() {
    return SimplifiedAccountTransaction(
      id: UniqueId.fromUniqueString(movementId.toString()),
      accountId: UniqueId.fromUniqueString(accountId.toString()),
      category: userCategory ?? analyticsCategory ?? '',
      description: description,
      endBalance: endBalance,
      date: postingDate,
      amount: amount,
      type: type.toDomain(),
    );
  }
}
