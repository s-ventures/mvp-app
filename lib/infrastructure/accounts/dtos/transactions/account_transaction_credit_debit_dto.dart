import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum AccountTransactionCreditDebitDto {
  credit,
  debit,
}
