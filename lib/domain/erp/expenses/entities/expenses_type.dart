// [ QUOTATION, INVOICE ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_type_dto.dart';

enum ExpensesType {
  quotation('Quotation'),
  invoice('Invoice');

  const ExpensesType(this.name);

  final String name;
}

extension ExpensesTypeX on ExpensesType {
  ExpensesTypeDto toDto() => switch (this) {
        ExpensesType.quotation => ExpensesTypeDto.quotation,
        ExpensesType.invoice => ExpensesTypeDto.invoice,
      };
}
