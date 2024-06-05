import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';
import 'package:manifiesto_mvp_app/infrastructure/attachments/dtos/file_attachment_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/dtos/serial_number_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_item_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_status_dto.dart';

part 'detailed_invoice_dto.freezed.dart';
part 'detailed_invoice_dto.g.dart';

@freezed
class DetailedInvoiceDto with _$DetailedInvoiceDto {
  const factory DetailedInvoiceDto({
    required int erpContractId,
    required int invoiceId,
    required int contractId,
    required String number,
    required int stakeholderId,
    @DateConverter() required DateTime dueDate,
    @DateConverter() required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required int fileId,
    required String additionalInfo,
    @DateConverter() required DateTime statusDate,
    required List<InvoiceItemDto> items,
    required SerialNumberDto serialNumber,
    required int stakeholderAddressId,
    required int stakeholderTelephoneId,
    required int stakeholderEmailId,
    @DateConverter() required DateTime issueDate,
    required InvoiceStatusDto status,
    required int quotationId,
    required String accountingTypeCode,
    required int serialNumberId,
    required List<FileAttachmentDto> attachments,
    // Todo(jesus): change when we have the type from the bfmf
    required dynamic subtotalVatAmount,
  }) = _DetailedInvoiceDto;

  factory DetailedInvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedInvoiceDtoFromJson(json);
}

extension DetailedInvoiceDtoX on DetailedInvoiceDto {
  DetailedInvoice toDomain() {
    return DetailedInvoice(
      id: UniqueId.fromUniqueString(invoiceId.toString()),
      contractId: UniqueId.fromUniqueString(erpContractId.toString()),
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
      stakeholderAddressId: UniqueId.fromUniqueString(stakeholderAddressId.toString()),
      stakeholderTelephoneId: UniqueId.fromUniqueString(stakeholderTelephoneId.toString()),
      stakeholderEmailId: UniqueId.fromUniqueString(stakeholderEmailId.toString()),
      issueDate: issueDate,
      status: status.toDomain(),
      quotationId: UniqueId.fromUniqueString(quotationId.toString()),
      accountingTypeCode: accountingTypeCode,
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      attachments: attachments.map((e) => e.toDomain()).toList(),
      subtotalVatAmount: subtotalVatAmount,
    );
  }
}
