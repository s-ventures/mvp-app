// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE
// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpenseStatusDto {
  draft,
  received,
  halfPaid,
  paid,
  cancelled;
}

extension ExpenseStatusDtoX on ExpenseStatusDto {
  ExpenseStatus toDomain() => switch (this) {
        ExpenseStatusDto.draft => ExpenseStatus.draft,
        ExpenseStatusDto.received => ExpenseStatus.received,
        ExpenseStatusDto.halfPaid => ExpenseStatus.halfPaid,
        ExpenseStatusDto.paid => ExpenseStatus.paid,
        ExpenseStatusDto.cancelled => ExpenseStatus.cancelled,
      };
}
