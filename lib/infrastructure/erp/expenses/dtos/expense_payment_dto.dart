import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_payment_origin_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_payment_status_dto.dart';

part 'expense_payment_dto.freezed.dart';
part 'expense_payment_dto.g.dart';

@freezed
class PaymentDto with _$PaymentDto {
  const factory PaymentDto({
    required int referenceId,
    required int expenseId,
    required PaymentOriginDto origin,
    required int bankMovId,
    required double amount,
    required String currencyCode,
    required String additionalInfo,
    required PaymentStatusDto status,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) => _$PaymentDtoFromJson(json);
}

extension PaymentDtoX on PaymentDto {
  Payment toDomain() {
    return Payment(
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
