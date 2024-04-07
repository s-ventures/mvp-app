import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/simplified_account_transaction_dto.dart';

part 'date_account_transactions_dto.freezed.dart';
part 'date_account_transactions_dto.g.dart';

@freezed
class DateAccountTransactionsDto with _$DateAccountTransactionsDto {
  const factory DateAccountTransactionsDto({
    required String date,
    required List<SimplifiedAccountTransactionDto> transactions,
  }) = _DateAccountTransactionsDto;

  factory DateAccountTransactionsDto.fromJson(Map<String, dynamic> json) =>
      _$DateAccountTransactionsDtoFromJson(json);
}
