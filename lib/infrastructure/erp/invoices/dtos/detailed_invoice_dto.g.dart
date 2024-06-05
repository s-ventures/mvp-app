// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedInvoiceDtoImpl _$$DetailedInvoiceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedInvoiceDtoImpl(
      erpContractId: (json['erpContractId'] as num).toInt(),
      invoiceId: (json['invoiceId'] as num).toInt(),
      contractId: (json['contractId'] as num).toInt(),
      number: json['number'] as String,
      stakeholderId: (json['stakeholderId'] as num).toInt(),
      dueDate: const DateConverter().fromJson(json['dueDate'] as String),
      createdDate:
          const DateConverter().fromJson(json['createdDate'] as String),
      currencyCode: json['currencyCode'] as String,
      withHoldingTaxesPercentage:
          (json['withHoldingTaxesPercentage'] as num).toDouble(),
      fileId: (json['fileId'] as num).toInt(),
      additionalInfo: json['additionalInfo'] as String,
      statusDate: const DateConverter().fromJson(json['statusDate'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: SerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      stakeholderAddressId: (json['stakeholderAddressId'] as num).toInt(),
      stakeholderTelephoneId: (json['stakeholderTelephoneId'] as num).toInt(),
      stakeholderEmailId: (json['stakeholderEmailId'] as num).toInt(),
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      status: $enumDecode(_$InvoiceStatusDtoEnumMap, json['status']),
      quotationId: (json['quotationId'] as num).toInt(),
      accountingTypeCode: json['accountingTypeCode'] as String,
      serialNumberId: (json['serialNumberId'] as num).toInt(),
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
