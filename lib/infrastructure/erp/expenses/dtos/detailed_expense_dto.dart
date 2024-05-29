import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/detailed_expense.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_item_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_payment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_serial_number_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_statys_dto.dart';

part 'detailed_expense_dto.freezed.dart';
part 'detailed_expense_dto.g.dart';

@freezed
class DetailedExpenseDto with _$DetailedExpenseDto {
  const factory DetailedExpenseDto({
    required int erpContractId,
    required String number,
    required int stakeholderId,
    @DateConverter() required DateTime dueDate,
    @DateConverter() required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required int fileId,
    required String additionalInfo,
    @DateConverter() required DateTime statusDate,
    required List<ExpensesItemDto> items,
    required ExpenseSerialNumberDto serialNumber,
    required int expenseId,
    @DateConverter() required DateTime issueDate,
    required double vatAmount,
    required double vatPercentage,
    required ExpensesStatusDto status,
    required String accountingTypeCode,
    required List<ExpensesPaymentDto> payments,
    required List<ExpensesAttachmentDto> attachments,
    required String fullName,
    required String documentTypeCode,
    required String documentNumber,
    required dynamic subtotalVatAmount,
  }) = _DetailedExpenseDto;

  factory DetailedExpenseDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedExpenseDtoFromJson(json);
}

extension DetailedExpenseDtoX on DetailedExpenseDto {
  DetailedExpense toDomain() {
    return DetailedExpense(
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      number: number,
      stakeholderId: UniqueId.fromUniqueString(stakeholderId.toString()),
      dueDate: dueDate,
      createdDate: createdDate,
      currencyCode: currencyCode,
      withHoldingTaxesPercentage: withHoldingTaxesPercentage,
      fileId: UniqueId.fromUniqueString(fileId.toString()),
      additionalInfo: additionalInfo,
      statusDate: statusDate,
      items: items.map((e) => e.toDomain()).toList(),
      serialNumber: serialNumber.toDomain(),
      expenseId: UniqueId.fromUniqueString(expenseId.toString()),
      issueDate: issueDate,
      vatAmount: vatAmount,
      vatPercentage: vatPercentage,
      status: status.toDomain(),
      accountingTypeCode: accountingTypeCode,
      payments: payments.map((e) => e.toDomain()).toList(),
      attachments: attachments.map((e) => e.toDomain()).toList(),
      fullName: fullName,
      documentTypeCode: documentTypeCode,
      documentNumber: documentNumber,
      subtotalVatAmount: subtotalVatAmount,
    );
  }
}
