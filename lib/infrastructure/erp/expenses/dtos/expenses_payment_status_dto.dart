// [ PENDING, CONFIRMED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpensesPaymentStatusDto {
  pending,
  confirmed;
}

extension ExpensesPaymentStatusDtoX on ExpensesPaymentStatusDto {
  ExpensesPaymentStatus toDomain() => switch (this) {
        ExpensesPaymentStatusDto.pending => ExpensesPaymentStatus.pending,
        ExpensesPaymentStatusDto.confirmed => ExpensesPaymentStatus.confirmed,
      };
}
