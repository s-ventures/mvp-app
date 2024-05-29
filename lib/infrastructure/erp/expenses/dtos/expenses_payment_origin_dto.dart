// [ CASH, BANK_PRODUCT, BANK_PRODUCT_EXTERNAL ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment_origin.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpensesPaymentOriginDto {
  cash,
  bankProduct,
  bankProductExternal;
}

extension ExpensesPaymentOriginDtoX on ExpensesPaymentOriginDto {
  ExpensesPaymentOrigin toDomain() => switch (this) {
        ExpensesPaymentOriginDto.cash => ExpensesPaymentOrigin.cash,
        ExpensesPaymentOriginDto.bankProduct => ExpensesPaymentOrigin.bankProduct,
        ExpensesPaymentOriginDto.bankProductExternal => ExpensesPaymentOrigin.bankProductExternal,
      };
}
