// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_statys_dto.dart';

enum ExpensesStatus {
  received('Received'),
  halfPaid('Half Paid'),
  paid('Paid'),
  cancelled('Cancelled'),
  draft('Draft');

  const ExpensesStatus(this.name);

  final String name;
}

extension ExpensesStatusX on ExpensesStatus {
  ExpensesStatusDto toDto() => switch (this) {
        ExpensesStatus.received => ExpensesStatusDto.received,
        ExpensesStatus.halfPaid => ExpensesStatusDto.halfPaid,
        ExpensesStatus.paid => ExpensesStatusDto.paid,
        ExpensesStatus.cancelled => ExpensesStatusDto.cancelled,
        ExpensesStatus.draft => ExpensesStatusDto.draft,
      };
}
