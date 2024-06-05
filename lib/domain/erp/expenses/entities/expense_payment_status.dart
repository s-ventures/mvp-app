//[ PENDING, CONFIRMED ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_payment_status_dto.dart';

enum PaymentStatus {
  pending('pending'),
  confirmed('confirmed');

  const PaymentStatus(this.name);
  final String name;
}

extension PaymentStatusX on PaymentStatus {
  PaymentStatusDto toDto() => switch (this) {
        PaymentStatus.pending => PaymentStatusDto.pending,
        PaymentStatus.confirmed => PaymentStatusDto.confirmed,
      };
}
