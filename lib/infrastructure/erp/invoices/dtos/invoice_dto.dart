import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_status_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/stakeholders/dtos/document_type_code_dto.dart';

// {
//       "erpContractId": 0,
//       "number": "string",
//       "stakeholderId": 0,
//       "dueDate": "2024-05-30",
//       "createdDate": "2024-05-30",
//       "totalAmount": 0,
//       "currencyCode": "string",
//       "withholdingTaxesPercentage": 0,
//       "fileId": 0,
//       "additionalInfo": "string",
//       "statusDate": "2024-05-30T00:56:33.846Z",
//       "withHoldingTaxesAmount": 0,
//       "totalWithoutTaxes": 0,
//       "invoiceId": 0,
//       "stakeholderAddressId": 0,
//       "stakeholderTelephoneId": 0,
//       "stakeholderEmailId": 0,
//       "sentDate": "2024-05-30",
//       "status": "DRAFT",
//       "quotationId": 0,
//       "accountingTypeCode": "string",
//       "serialNumberId": 0,
//       "fullName": "string",
//       "documentTypeCode": "string",
//       "documentNumber": "string"
// }

part 'invoice_dto.freezed.dart';
part 'invoice_dto.g.dart';

@freezed
class InvoiceDto with _$InvoiceDto {
  const factory InvoiceDto({
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
    required int invoiceId,
    required int? stakeholderAddressId,
    required int? stakeholderTelephoneId,
    required int? stakeholderEmailId,
    required DateTime? sentDate,
    required InvoiceStatusDto status,
    required int? serialNumberId,
    required String fullName,
    required DocumentTypeCodeDto documentTypeCode,
    required String documentNumber,
  }) = _InvoiceDto;

  factory InvoiceDto.fromJson(Map<String, dynamic> json) => _$InvoiceDtoFromJson(json);
}

extension InvoiceDtoX on InvoiceDto {
  Invoice toDomain() {
    return Invoice(
      id: UniqueId.fromUniqueString(invoiceId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      number: number ?? '',
      totalAmount: totalAmount ?? 0,
      dueDate: dueDate,
      createdDate: createdDate,
      sentDate: sentDate,
      statusDate: statusDate,
      status: status.toDomain(),
      fullName: fullName,
      documentTypeCode: documentTypeCode.toDomain(),
      documentNumber: documentNumber,
    );
  }
}
