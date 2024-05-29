// [ CASH, BANK_PRODUCT, BANK_PRODUCT_EXTERNAL ]

import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_payment_origin_dto.dart';

enum ExpensesPaymentOrigin {
  cash('Cash'),
  bankProduct('Bank Product'),
  bankProductExternal('Bank Product External');

  const ExpensesPaymentOrigin(this.name);

  final String name;
}

extension ExpensesPaymentOriginX on ExpensesPaymentOrigin {
  ExpensesPaymentOriginDto toDto() => switch (this) {
        ExpensesPaymentOrigin.cash => ExpensesPaymentOriginDto.cash,
        ExpensesPaymentOrigin.bankProduct => ExpensesPaymentOriginDto.bankProduct,
        ExpensesPaymentOrigin.bankProductExternal => ExpensesPaymentOriginDto.bankProductExternal,
      };
}
