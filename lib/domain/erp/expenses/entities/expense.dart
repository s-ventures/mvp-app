import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense_status.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/document_type_code.dart';

part 'expense.freezed.dart';

@freezed
class Expense with _$Expense {
  const factory Expense({
    required UniqueId id,
    required UniqueId erpContractId,
    required String number,
    required double totalAmount,
    required DateTime? dueDate,
    required DateTime createdDate,
    required DateTime? issueDate,
    required DateTime? statusDate,
    required String fullName,
    required ExpenseStatus status,
    required DocumentTypeCode documentTypeCode,
    required String documentNumber,
  }) = _Expense;
}
