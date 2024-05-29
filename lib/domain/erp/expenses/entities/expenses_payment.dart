import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment_origin.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment_status.dart';

part 'expenses_payment.freezed.dart';

@freezed
class ExpensesPayment with _$ExpensesPayment {
  const factory ExpensesPayment({
    required UniqueId referenceId,
    required UniqueId expenseId,
    required ExpensesPaymentOrigin origin,
    required UniqueId bankMovId,
    required double amount,
    required String currencyCode,
    required String additionalInfo,
    required ExpensesPaymentStatus status,
  }) = _ExpensesPayment;
}
