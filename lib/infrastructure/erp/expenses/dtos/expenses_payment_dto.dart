import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_payment_origin_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_payment_status_dto.dart';

part 'expenses_payment_dto.freezed.dart';
part 'expenses_payment_dto.g.dart';

@freezed
class ExpensesPaymentDto with _$ExpensesPaymentDto {
  const factory ExpensesPaymentDto({
    required int referenceId,
    required int expenseId,
    required ExpensesPaymentOriginDto origin,
    required int bankMovId,
    required double amount,
    required String currencyCode,
    required String additionalInfo,
    required ExpensesPaymentStatusDto status,
  }) = _ExpensesPaymentDto;

  factory ExpensesPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$ExpensesPaymentDtoFromJson(json);
}

extension ExpensesPaymentDtoX on ExpensesPaymentDto {
  ExpensesPayment toDomain() {
    return ExpensesPayment(
      referenceId: UniqueId.fromUniqueString(referenceId.toString()),
      expenseId: UniqueId.fromUniqueString(expenseId.toString()),
      origin: origin.toDomain(),
      bankMovId: UniqueId.fromUniqueString(bankMovId.toString()),
      amount: amount,
      currencyCode: currencyCode,
      additionalInfo: additionalInfo,
      status: status.toDomain(),
    );
  }
}
