import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/serial_number.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_item.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';
import 'package:manifiesto_mvp_app/domain/upload/entities/file_attachment.dart';

part 'detailed_invoice.freezed.dart';

@freezed
class DetailedInvoice with _$DetailedInvoice {
  const factory DetailedInvoice({
    required UniqueId id,
    required UniqueId contractId,
    required String number,
    required UniqueId stakeholderId,
    required DateTime dueDate,
    required DateTime createdDate,
    required String currencyCode,
    required double withHoldingTaxesPercentage,
    required UniqueId fileId,
    required String additionalInfo,
    required DateTime statusDate,
    required List<InvoiceItem> items,
    required SerialNumber serialNumber,
    required UniqueId stakeholderAddressId,
    required UniqueId stakeholderTelephoneId,
    required UniqueId stakeholderEmailId,
    required DateTime issueDate,
    required InvoiceStatus status,
    required UniqueId quotationId,
    required String accountingTypeCode,
    required UniqueId serialNumberId,
    required List<FileAttachment> attachments,
    // TODO(jesus): change when we have the type from the bfmf
    required dynamic subtotalVatAmount,
  }) = _DetailedInvoice;
}
