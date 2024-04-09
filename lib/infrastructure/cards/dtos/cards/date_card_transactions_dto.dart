import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/infrastructure/cards/dtos/transactions/simplified_card_transaction_dto.dart';

part 'date_card_transactions_dto.freezed.dart';
part 'date_card_transactions_dto.g.dart';

@freezed
class DateCardTransactionsDto with _$DateCardTransactionsDto {
  const factory DateCardTransactionsDto({
    required String date,
    required List<SimplifiedCardTransactionDto> transactions,
  }) = _DateCardTransactionsDto;

  factory DateCardTransactionsDto.fromJson(Map<String, dynamic> json) =>
      _$DateCardTransactionsDtoFromJson(json);
}
