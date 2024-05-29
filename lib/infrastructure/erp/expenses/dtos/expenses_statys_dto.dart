// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpensesStatusDto {
  received,
  halfPaid,
  paid,
  cancelled,
  draft;
}

extension ExpensesStatusDtoX on ExpensesStatusDto {
  ExpensesStatus toDomain() => switch (this) {
        ExpensesStatusDto.received => ExpensesStatus.received,
        ExpensesStatusDto.halfPaid => ExpensesStatus.halfPaid,
        ExpensesStatusDto.paid => ExpensesStatus.paid,
        ExpensesStatusDto.cancelled => ExpensesStatus.cancelled,
        ExpensesStatusDto.draft => ExpensesStatus.draft,
      };
}
