import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/value_objects.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_attachment.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items_vat.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_serial_number.dart';
import 'package:manifiesto_mvp_app/infrastructure/core/json_converter/date_converter.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_items_unit_of_measure_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_serial_number_type_dto.dart';
import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_status_dto.dart';

part 'detailed_invoice_dto.freezed.dart';
part 'detailed_invoice_dto.g.dart';

@freezed
class DetailedInvoiceDto with _$DetailedInvoiceDto {
  const factory DetailedInvoiceDto({
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
    required int invoiceId,
    required int stakeholderAddressId,
    required int stakeholderTelephoneId,
    required int stakeholderEmailId,
    @DateConverter() required DateTime issueDate,
    required DetailedInvoiceStatusDto status,
    required int quotationId,
    required String accountingTypeCode,
    required int serialNumberId,
    required List<InvoiceItemDto> items,
    required InvoiceSerialNumberDto serialNumber,
    required List<InvoiceAttachmentDto> attachments,
    required dynamic subtotalVatAmount,
  }) = _DetailedInvoiceDto;

  factory DetailedInvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$DetailedInvoiceDtoFromJson(json);
}

extension DetailedInvoiceDtoX on DetailedInvoiceDto {
  DetailedInvoice toDomain() {
    return DetailedInvoice(
      id: UniqueId.fromUniqueString(invoiceId.toString()),
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
      stakeholderAddressId: UniqueId.fromUniqueString(stakeholderAddressId.toString()),
      stakeholderTelephoneId: UniqueId.fromUniqueString(stakeholderTelephoneId.toString()),
      stakeholderEmailId: UniqueId.fromUniqueString(stakeholderEmailId.toString()),
      issueDate: issueDate,
      status: status.toDomain(),
      quotationId: UniqueId.fromUniqueString(quotationId.toString()),
      accountingTypeCode: accountingTypeCode,
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      items: items.map((e) => e.toDomain()).toList(),
      attachments: attachments.map((e) => e.toDomain()).toList(),
      serialNumber: serialNumber.toDomain(),
      subtotalVatAmount: subtotalVatAmount,
    );
  }
}

@freezed
class InvoiceItemDto with _$InvoiceItemDto {
  const factory InvoiceItemDto({
    required int relativeOrder,
    required String itemCode,
    required String description,
    required int quantity,
    required DetailedInvoiceItemUnitOfMeasureDto unitOfMeasure,
    required double price,
    required double discount,
    required VatDto vat,
    required int invoiceItemId,
    required int invoiceId,
  }) = _InvoiceItemDto;

  factory InvoiceItemDto.fromJson(Map<String, dynamic> json) => _$InvoiceItemDtoFromJson(json);
}

extension InvoiceItemDtoX on InvoiceItemDto {
  DetailedInvoiceItem toDomain() {
    return DetailedInvoiceItem(
      relativeOrder: relativeOrder,
      itemCode: itemCode,
      description: description,
      quantity: quantity,
      unitOfMeasure: unitOfMeasure.toDomain(),
      price: price,
      discount: discount,
      vat: vat.toDomain(),
      invoiceItemId: UniqueId.fromUniqueString(invoiceItemId.toString()),
      invoiceId: UniqueId.fromUniqueString(invoiceId.toString()),
    );
  }
}

@freezed
class VatDto with _$VatDto {
  const factory VatDto({
    required int vatId,
    required int percentage,
    required String description,
    @DateConverter() required DateTime initialDate,
    @DateConverter() required DateTime endDate,
  }) = _VatDto;

  factory VatDto.fromJson(Map<String, dynamic> json) => _$VatDtoFromJson(json);
}

extension VatDtoX on VatDto {
  DetailedInvoiceItemVat toDomain() {
    return DetailedInvoiceItemVat(
      vatId: UniqueId.fromUniqueString(vatId.toString()),
      percentage: percentage,
      description: description,
      initialDate: initialDate,
      endDate: endDate,
    );
  }
}

@freezed
class InvoiceSerialNumberDto with _$InvoiceSerialNumberDto {
  const factory InvoiceSerialNumberDto({
    required int serialNumberId,
    required int erpContractId,
    required DetailedInvoiceSerialNumberTypeDto type,
    required String alias,
    required String description,
    required int numberLast,
    required String format,
    required int templateId,
  }) = _InvoiceSerialNumberDto;

  factory InvoiceSerialNumberDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSerialNumberDtoFromJson(json);
}

extension InvoiceSerialNumberDtoX on InvoiceSerialNumberDto {
  DetailedInvoiceSerialNumber toDomain() {
    return DetailedInvoiceSerialNumber(
      serialNumberId: UniqueId.fromUniqueString(serialNumberId.toString()),
      erpContractId: UniqueId.fromUniqueString(erpContractId.toString()),
      type: type.toDomain(),
      alias: alias,
      description: description,
      numberLast: numberLast,
      format: format,
      templateId: UniqueId.fromUniqueString(templateId.toString()),
    );
  }
}

@freezed
class InvoiceAttachmentDto with _$InvoiceAttachmentDto {
  const factory InvoiceAttachmentDto({
    required int invoiceAttachmentId,
    required int invoiceId,
    required int fileId,
  }) = _InvoiceAttachmentDto;

  factory InvoiceAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceAttachmentDtoFromJson(json);
}

extension InvoiceAttachmentDtoX on InvoiceAttachmentDto {
  DetailedInvoiceAttachment toDomain() {
    return DetailedInvoiceAttachment(
      invoiceAttachmentId: UniqueId.fromUniqueString(invoiceAttachmentId.toString()),
      invoiceId: UniqueId.fromUniqueString(invoiceId.toString()),
      fileId: UniqueId.fromUniqueString(fileId.toString()),
    );
  }
}
