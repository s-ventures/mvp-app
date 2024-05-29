// [ PENDING, CONFIRMED ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_payment_status_dto.dart';

enum ExpensesPaymentStatus {
  pending('Pending'),
  confirmed('Confirmed');

  const ExpensesPaymentStatus(this.name);

  final String name;
}

extension ExpensesPaymentStatusX on ExpensesPaymentStatus {
  ExpensesPaymentStatusDto toDto() => switch (this) {
        ExpensesPaymentStatus.pending => ExpensesPaymentStatusDto.pending,
        ExpensesPaymentStatus.confirmed => ExpensesPaymentStatusDto.confirmed,
      };
}
