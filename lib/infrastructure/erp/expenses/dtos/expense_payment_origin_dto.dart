// [ CASH, BANK_PRODUCT, BANK_PRODUCT_EXTERNAL ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment_origin.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum PaymentOriginDto {
  cash,
  bankProduct,
  bankProductExternal;
}

extension PaymentOriginDtoX on PaymentOriginDto {
  PaymentOrigin toDomain() => switch (this) {
        PaymentOriginDto.cash => PaymentOrigin.cash,
        PaymentOriginDto.bankProduct => PaymentOrigin.bankProduct,
        PaymentOriginDto.bankProductExternal => PaymentOrigin.bankProductExternal,
      };
}
