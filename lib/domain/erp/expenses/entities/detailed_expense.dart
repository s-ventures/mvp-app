import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_item.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_payment.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_expense.freezed.dart';

@freezed
class DetailedExpense with _$DetailedExpense {
  const factory DetailedExpense({
    required UniqueId id,
    required UniqueId erpContractId,
    required String number,
    required UniqueId stakeholderId,
    required DateTime dueDate,
    required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required UniqueId fileId,
    required String additionalInfo,
    required DateTime statusDate,
    required DateTime issueDate,
    required double vatAmount,
    required double vatPercentage,
    required String accountingTypeCode,
    required String fullName,
    required String documentTypeCode,
    required String documentNumber,
    required ExpenseStatus status,
    required List<ExpenseItem> items,
    required dynamic subtotalVatAmount,
    required SerialNumber serialNumber,
    required List<Payment> payments,
    required List<FileAttachment> attachments,
  }) = _DetailedExpense;
}
