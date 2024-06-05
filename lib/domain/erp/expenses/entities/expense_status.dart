// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_status_dto.dart';

enum ExpenseStatus {
  draft('Borrador'),
  received('Recibido'),
  halfPaid('Pagado 50%'),
  paid('Pagado'),
  cancelled('Cancelado');

  const ExpenseStatus(this.name);

  final String name;
}

extension ExpenseStatusX on ExpenseStatus {
  ExpenseStatusDto toDto() => switch (this) {
        ExpenseStatus.draft => ExpenseStatusDto.draft,
        ExpenseStatus.received => ExpenseStatusDto.received,
        ExpenseStatus.halfPaid => ExpenseStatusDto.halfPaid,
        ExpenseStatus.paid => ExpenseStatusDto.paid,
        ExpenseStatus.cancelled => ExpenseStatusDto.cancelled,
      };
}
