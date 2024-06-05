import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment_origin.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment_status.dart';

part 'expense_payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required UniqueId referenceId,
    required UniqueId expenseId,
    required PaymentOrigin origin,
    required UniqueId bankMovId,
    required double amount,
    required String currencyCode,
    required String additionalInfo,
    required PaymentStatus status,
  }) = _Payment;
}
