// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedInvoiceDtoImpl _$$DetailedInvoiceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedInvoiceDtoImpl(
      erpContractId: json['erpContractId'] as int,
      invoiceId: json['invoiceId'] as int,
      contractId: json['contractId'] as int,
      number: json['number'] as String,
      stakeholderId: json['stakeholderId'] as int,
      dueDate: const DateConverter().fromJson(json['dueDate'] as String),
      createdDate:
          const DateConverter().fromJson(json['createdDate'] as String),
      currencyCode: json['currencyCode'] as String,
      withHoldingTaxesPercentage:
          (json['withHoldingTaxesPercentage'] as num).toDouble(),
      fileId: json['fileId'] as int,
      additionalInfo: json['additionalInfo'] as String,
      statusDate: const DateConverter().fromJson(json['statusDate'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: SerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      stakeholderAddressId: json['stakeholderAddressId'] as int,
      stakeholderTelephoneId: json['stakeholderTelephoneId'] as int,
      stakeholderEmailId: json['stakeholderEmailId'] as int,
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      status: $enumDecode(_$InvoiceStatusDtoEnumMap, json['status']),
      quotationId: json['quotationId'] as int,
      accountingTypeCode: json['accountingTypeCode'] as String,
      serialNumberId: json['serialNumberId'] as int,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => FileAttachmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotalVatAmount: json['subtotalVatAmount'],
    );

Map<String, dynamic> _$$DetailedInvoiceDtoImplToJson(
        _$DetailedInvoiceDtoImpl instance) =>
    <String, dynamic>{
      'erpContractId': instance.erpContractId,
      'invoiceId': instance.invoiceId,
      'contractId': instance.contractId,
      'number': instance.number,
      'stakeholderId': instance.stakeholderId,
      'dueDate': const DateConverter().toJson(instance.dueDate),
      'createdDate': const DateConverter().toJson(instance.createdDate),
      'currencyCode': instance.currencyCode,
      'withHoldingTaxesPercentage': instance.withHoldingTaxesPercentage,
      'fileId': instance.fileId,
      'additionalInfo': instance.additionalInfo,
      'statusDate': const DateConverter().toJson(instance.statusDate),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'serialNumber': instance.serialNumber.toJson(),
      'stakeholderAddressId': instance.stakeholderAddressId,
      'stakeholderTelephoneId': instance.stakeholderTelephoneId,
      'stakeholderEmailId': instance.stakeholderEmailId,
      'issueDate': const DateConverter().toJson(instance.issueDate),
      'status': _$InvoiceStatusDtoEnumMap[instance.status]!,
      'quotationId': instance.quotationId,
      'accountingTypeCode': instance.accountingTypeCode,
      'serialNumberId': instance.serialNumberId,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'subtotalVatAmount': instance.subtotalVatAmount,
    };

const _$InvoiceStatusDtoEnumMap = {
  InvoiceStatusDto.draft: 'DRAFT',
  InvoiceStatusDto.issued: 'ISSUED',
  InvoiceStatusDto.halfPaid: 'HALF_PAID',
  InvoiceStatusDto.paid: 'PAID',
  InvoiceStatusDto.cancelled: 'CANCELLED',
};
