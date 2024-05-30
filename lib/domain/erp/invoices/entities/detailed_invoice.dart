import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_attachment.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_serial_number.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_status.dart';

part 'detailed_invoice.freezed.dart';

@freezed
class DetailedInvoice with _$DetailedInvoice {
  const factory DetailedInvoice({
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
    required UniqueId stakeholderAddressId,
    required UniqueId stakeholderTelephoneId,
    required UniqueId stakeholderEmailId,
    required DateTime issueDate,
    required DetailedInvoiceStatus status,
    required UniqueId quotationId,
    required String accountingTypeCode,
    required UniqueId serialNumberId,
    required List<DetailedInvoiceItem> items,
    required List<DetailedInvoiceAttachment> attachments,
    required DetailedInvoiceSerialNumber serialNumber,
    required dynamic subtotalVatAmount,
  }) = _DetailedInvoice;
}
