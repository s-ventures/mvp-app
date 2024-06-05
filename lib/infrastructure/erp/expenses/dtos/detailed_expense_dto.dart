import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/detailed_expense.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/serial_number_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_item_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_payment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_status_dto.dart';

part 'detailed_expense_dto.freezed.dart';
part 'detailed_expense_dto.g.dart';

@freezed
class DetailedExpenseDto with _$DetailedExpenseDto {
  const factory DetailedExpenseDto({
    required int expenseId,
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
    @DateConverter() required DateTime issueDate,
    required double vatAmount,
    required double vatPercentage,
    required String accountingTypeCode,
    required String fullName,
    // Todo(jesus): Change to DocumentTypeCodeDto
    required String documentTypeCode,
    required String documentNumber,
    required ExpenseStatusDto status,
    required List<ExpenseItemDto> items,
    // Todo(jesus): Change to SubtotalVatAmountDto
    required dynamic subtotalVatAmount,
    required SerialNumberDto serialNumber,
    required List<PaymentDto> payments,
    required List<FileAttachmentDto> attachments,
  }) = _DetailedExpenseDto;

  factory DetailedExpenseDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedExpenseDtoFromJson(json);
}

extension DetailedExpenseDtoX on DetailedExpenseDto {
  DetailedExpense toDomain() {
    return DetailedExpense(
      id: UniqueId.fromUniqueString(expenseId.toString()),
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
      issueDate: issueDate,
      vatAmount: vatAmount,
      vatPercentage: vatPercentage,
      accountingTypeCode: accountingTypeCode,
      fullName: fullName,
      documentTypeCode: documentTypeCode,
      documentNumber: documentNumber,
      status: status.toDomain(),
      items: items.map((e) => e.toDomain()).toList(),
      subtotalVatAmount: subtotalVatAmount,
      serialNumber: serialNumber.toDomain(),
      payments: payments.map((e) => e.toDomain()).toList(),
      attachments: attachments.map((e) => e.toDomain()).toList(),
    );
  }
}
