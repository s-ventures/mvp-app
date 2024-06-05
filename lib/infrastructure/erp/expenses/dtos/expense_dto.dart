import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expense.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expense_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';

// {
//       "erpContractId": 0,
//       "number": "string",
//       "stakeholderId": 0,
//       "dueDate": "2024-06-03",
//       "createdDate": "2024-06-03",
//       "totalAmount": 0,
//       "currencyCode": "string",
//       "withholdingTaxesPercentage": 0,
//       "fileId": 0,
//       "additionalInfo": "string",
//       "statusDate": "2024-06-03T12:03:25.403Z",
//       "withHoldingTaxesAmount": 0,
//       "totalWithoutTaxes": 0,
//       "expenseId": 0,
//       "issueDate": "2024-06-03",
//       "vatAmount": 0,
//       "vatPercentage": 0,
//       "status": "RECEIVED",
//       "accountingTypeCode": "string",
//       "fullName": "string",
//       "documentTypeCode": "string",
//       "documentNumber": "string"
//     }

part 'expense_dto.freezed.dart';
part 'expense_dto.g.dart';

@freezed
class ExpenseDto with _$ExpenseDto {
  const factory ExpenseDto({
    required int erpContractId,
    required String? number,
    required int stakeholderId,
    required DateTime? dueDate,
    required DateTime createdDate,
    required double? totalAmount,
    required String? currencyCode,
    required double? withholdingTaxesPercentage,
    required int? fileId,
    required String? additionalInfo,
    required DateTime? statusDate,
    required double? withHoldingTaxesAmount,
    required double? totalWithoutTaxes,
    required int expenseId,
    required DateTime? issuedDate,
    required double? vatAmount,
    required double? vatPercentage,
    required ExpenseStatusDto status,
    required String? accountingTypeCode,
    required String fullName,
    required DocumentTypeCodeDto documentTypeCode,
    required String documentNumber,
  }) = _ExpenseDto;

  factory ExpenseDto.fromJson(Map<String, dynamic> json) => _$ExpenseDtoFromJson(json);
}

extension ExpenseDtoX on ExpenseDto {
  Expense toDomain() {
    return Expense(
      id: UniqueId.fromUniqueString(expenseId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      number: number ?? '',
      totalAmount: totalAmount ?? 0,
      dueDate: dueDate,
      createdDate: createdDate,
      issueDate: issuedDate,
      statusDate: statusDate,
      status: status.toDomain(),
      fullName: fullName,
      documentTypeCode: documentTypeCode.toDomain(),
      documentNumber: documentNumber,
    );
  }
}
