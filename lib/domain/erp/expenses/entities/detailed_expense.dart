import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_attachment.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_item.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_payment.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_serial_number.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_status.dart';

part 'detailed_expense.freezed.dart';

@freezed
class DetailedExpense with _$DetailedExpense {
  const factory DetailedExpense({
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
    required List<ExpensesItem> items,
    required ExpensesSerialNumber serialNumber,
    required UniqueId expenseId,
    required DateTime issueDate,
    required double vatAmount,
    required double vatPercentage,
    required ExpensesStatus status,
    required String accountingTypeCode,
    required List<ExpensesPayment> payments,
    required List<ExpensesAttachment> attachments,
    required String fullName,
    required String documentTypeCode,
    required String documentNumber,
    required dynamic subtotalVatAmount,
  }) = _DetailedExpense;
}
