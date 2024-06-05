//[ PENDING, CONFIRMED ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PaymentStatusDto {
  pending,
  confirmed;
}

extension PaymentStatusDtoX on PaymentStatusDto {
  PaymentStatus toDomain() => switch (this) {
        PaymentStatusDto.pending => PaymentStatus.pending,
        PaymentStatusDto.confirmed => PaymentStatus.confirmed,
      };
}
