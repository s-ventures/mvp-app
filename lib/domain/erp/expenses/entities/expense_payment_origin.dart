// [ CASH, BANK_PRODUCT, BANK_PRODUCT_EXTERNAL ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_payment_origin_dto.dart';

enum PaymentOrigin {
  cash('CASH'),
  bankProduct('BANK_PRODUCT'),
  bankProductExternal('BANK_PRODUCT_EXTERNAL');

  const PaymentOrigin(this.name);
  final String name;
}

extension PaymentOriginX on PaymentOrigin {
  PaymentOriginDto toDto() => switch (this) {
        PaymentOrigin.cash => PaymentOriginDto.cash,
        PaymentOrigin.bankProduct => PaymentOriginDto.bankProduct,
        PaymentOrigin.bankProductExternal => PaymentOriginDto.bankProductExternal,
      };
}
