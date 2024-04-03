// [ ACCOUNTS, CARDS, UNKNOWN, AGGREGATED_ACCOUNTS ]

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ProductTypeDto {
  accounts,
  cards,
  aggregatedAccounts,
  unknown,
}
