// [ UNDEFINED, CHECKING, SAVINGS, CREDIT_CARD ]

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum TypeDto {
  undefined,
  checking,
  savings,
  creditCard,
}
