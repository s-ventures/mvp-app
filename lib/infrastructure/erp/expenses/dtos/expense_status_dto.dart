// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpenseStatusDto {
  received,
  halfPaid,
  paid,
  cancelled,
  draft;
}

extension ExpenseStatusDtoX on ExpenseStatusDto {
  ExpenseStatus toDomain() => switch (this) {
        ExpenseStatusDto.received => ExpenseStatus.received,
        ExpenseStatusDto.halfPaid => ExpenseStatus.halfPaid,
        ExpenseStatusDto.paid => ExpenseStatus.paid,
        ExpenseStatusDto.cancelled => ExpenseStatus.cancelled,
        ExpenseStatusDto.draft => ExpenseStatus.draft,
      };
}
