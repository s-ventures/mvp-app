// [ QUOTATION, INVOICE ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpensesTypeDto {
  quotation,
  invoice;
}

extension ExpensesTypeDtoX on ExpensesTypeDto {
  ExpensesType toDomain() => switch (this) {
        ExpensesTypeDto.quotation => ExpensesType.quotation,
        ExpensesTypeDto.invoice => ExpensesType.invoice,
      };
}
