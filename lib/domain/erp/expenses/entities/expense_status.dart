// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_status_dto.dart';

enum ExpenseStatus {
  received('Recibido'),
  halfPaid('Medio pagado'),
  paid('Pagado'),
  cancelled('Cancelado'),
  draft('Borrador');

  const ExpenseStatus(this.name);
  final String name;
}

extension ExpenseStatusX on ExpenseStatus {
  ExpenseStatusDto toDto() => switch (this) {
        ExpenseStatus.received => ExpenseStatusDto.received,
        ExpenseStatus.halfPaid => ExpenseStatusDto.halfPaid,
        ExpenseStatus.paid => ExpenseStatusDto.paid,
        ExpenseStatus.cancelled => ExpenseStatusDto.cancelled,
        ExpenseStatus.draft => ExpenseStatusDto.draft,
      };
}
