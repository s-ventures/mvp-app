// {
//   "pageSize": 0,
//   "pageNumber": 0,
//   "movementId": 0,
//   "postingDateFrom": "2024-03-20",
//   "postingDateTo": "2024-03-20",
//   "valueDateFrom": "2024-03-20",
//   "valueDateTo": "2024-03-20",
//   "type": "string",
//   "amountFrom": 0,
//   "amountTo": 0,
//   "currencyCode": "string",
//   "description": "string",
//   "userComments": "string",
//   "userCategory": "string",
//   "accountId": [
//     0
//   ],
//   "endtoendId": "string",
//   "endBalance": 0,
//   "creditDebit": "CREDIT",
//   "detailFields": "string",
//   "visible": true,
//   "movementNumber": "string",
//   "bankReceipt": true,
//   "originBranch": "string",
//   "originalAmountFrom": 0,
//   "originalAmountTo": 0,
//   "originalCurrencyCode": "string"
// }

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transaction_credit_debit.dart';
import 'package:manifiesto_mvp_app/domain/accounts/transactions/entities/account_transactions_filter.dart';
import 'package:manifiesto_mvp_app/infrastructure/accounts/dtos/transactions/account_transaction_credit_debit_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/network/api/pagination/paginated_request.dart';

part 'account_transactions_filter_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class AccountTransactionsFilterDto extends PaginatedRequest {
  AccountTransactionsFilterDto({
    required this.accountId,
    required this.description,
    required this.amountFrom,
    required this.amountTo,
    required this.postingDateFrom,
    required this.postingDateTo,
    required this.creditDebit,
    super.pageNumber = 0,
    super.pageSize = 10,
  });

  factory AccountTransactionsFilterDto.fromDomain({
    required AccountTransactionsFilter filter,
    int pageSize = 10,
    int pageNumber = 0,
  }) {
    return AccountTransactionsFilterDto(
      accountId: filter.accountIds.map((e) => e.toInt()).toList(),
      description: filter.description,
      postingDateFrom: filter.dateFrom,
      postingDateTo: filter.dateTo,
      amountFrom: filter.amountFrom,
      amountTo: filter.amountTo,
      creditDebit: filter.creditDebit?.toDto(),
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  factory AccountTransactionsFilterDto.fromJson(Map<String, dynamic> json) =>
      _$AccountTransactionsFilterDtoFromJson(json);

  final List<int> accountId;
  final String? description;
  @DateConverter()
  final DateTime? postingDateFrom;
  @DateConverter()
  final DateTime? postingDateTo;
  final double? amountFrom;
  final double? amountTo;
  final AccountTransactionCreditDebitDto? creditDebit;

  @override
  Map<String, dynamic> toJson() => _$AccountTransactionsFilterDtoToJson(this);
}
