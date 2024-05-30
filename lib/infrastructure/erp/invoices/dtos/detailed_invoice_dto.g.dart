// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedInvoiceDtoImpl _$$DetailedInvoiceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedInvoiceDtoImpl(
      erpContractId: json['erpContractId'] as int,
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
      invoiceId: json['invoiceId'] as int,
      stakeholderAddressId: json['stakeholderAddressId'] as int,
      stakeholderTelephoneId: json['stakeholderTelephoneId'] as int,
      stakeholderEmailId: json['stakeholderEmailId'] as int,
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      status: $enumDecode(_$DetailedInvoiceStatusDtoEnumMap, json['status']),
      quotationId: json['quotationId'] as int,
      accountingTypeCode: json['accountingTypeCode'] as String,
      serialNumberId: json['serialNumberId'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => InvoiceItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: InvoiceSerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => InvoiceAttachmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotalVatAmount: json['subtotalVatAmount'],
    );

Map<String, dynamic> _$$DetailedInvoiceDtoImplToJson(
        _$DetailedInvoiceDtoImpl instance) =>
    <String, dynamic>{
      'erpContractId': instance.erpContractId,
      'number': instance.number,
      'stakeholderId': instance.stakeholderId,
      'dueDate': const DateConverter().toJson(instance.dueDate),
      'createdDate': const DateConverter().toJson(instance.createdDate),
      'currencyCode': instance.currencyCode,
      'withHoldingTaxesPercentage': instance.withHoldingTaxesPercentage,
      'fileId': instance.fileId,
      'additionalInfo': instance.additionalInfo,
      'statusDate': const DateConverter().toJson(instance.statusDate),
      'invoiceId': instance.invoiceId,
      'stakeholderAddressId': instance.stakeholderAddressId,
      'stakeholderTelephoneId': instance.stakeholderTelephoneId,
      'stakeholderEmailId': instance.stakeholderEmailId,
      'issueDate': const DateConverter().toJson(instance.issueDate),
      'status': _$DetailedInvoiceStatusDtoEnumMap[instance.status]!,
      'quotationId': instance.quotationId,
      'accountingTypeCode': instance.accountingTypeCode,
      'serialNumberId': instance.serialNumberId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'serialNumber': instance.serialNumber.toJson(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'subtotalVatAmount': instance.subtotalVatAmount,
    };

const _$DetailedInvoiceStatusDtoEnumMap = {
  DetailedInvoiceStatusDto.draft: 'DRAFT',
  DetailedInvoiceStatusDto.issued: 'ISSUED',
  DetailedInvoiceStatusDto.halfPaid: 'HALF_PAID',
  DetailedInvoiceStatusDto.paid: 'PAID',
  DetailedInvoiceStatusDto.cancelled: 'CANCELLED',
};

_$InvoiceItemDtoImpl _$$InvoiceItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceItemDtoImpl(
      relativeOrder: json['relativeOrder'] as int,
      itemCode: json['itemCode'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      unitOfMeasure: $enumDecode(
          _$DetailedInvoiceItemUnitOfMeasureDtoEnumMap, json['unitOfMeasure']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      vat: VatDto.fromJson(json['vat'] as Map<String, dynamic>),
      invoiceItemId: json['invoiceItemId'] as int,
      invoiceId: json['invoiceId'] as int,
    );

Map<String, dynamic> _$$InvoiceItemDtoImplToJson(
        _$InvoiceItemDtoImpl instance) =>
    <String, dynamic>{
      'relativeOrder': instance.relativeOrder,
      'itemCode': instance.itemCode,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitOfMeasure':
          _$DetailedInvoiceItemUnitOfMeasureDtoEnumMap[instance.unitOfMeasure]!,
      'price': instance.price,
      'discount': instance.discount,
      'vat': instance.vat.toJson(),
      'invoiceItemId': instance.invoiceItemId,
      'invoiceId': instance.invoiceId,
    };

const _$DetailedInvoiceItemUnitOfMeasureDtoEnumMap = {
  DetailedInvoiceItemUnitOfMeasureDto.unit: 'UNIT',
  DetailedInvoiceItemUnitOfMeasureDto.gr: 'GR',
  DetailedInvoiceItemUnitOfMeasureDto.kg: 'KG',
  DetailedInvoiceItemUnitOfMeasureDto.cm: 'CM',
  DetailedInvoiceItemUnitOfMeasureDto.m: 'M',
  DetailedInvoiceItemUnitOfMeasureDto.m2: 'M2',
  DetailedInvoiceItemUnitOfMeasureDto.cl: 'CL',
  DetailedInvoiceItemUnitOfMeasureDto.l: 'L',
  DetailedInvoiceItemUnitOfMeasureDto.m3: 'M3',
  DetailedInvoiceItemUnitOfMeasureDto.hour: 'HOUR',
  DetailedInvoiceItemUnitOfMeasureDto.day: 'DAY',
  DetailedInvoiceItemUnitOfMeasureDto.month: 'MONTH',
  DetailedInvoiceItemUnitOfMeasureDto.year: 'YEAR',
};

_$VatDtoImpl _$$VatDtoImplFromJson(Map<String, dynamic> json) => _$VatDtoImpl(
      vatId: json['vatId'] as int,
      percentage: json['percentage'] as int,
      description: json['description'] as String,
      initialDate:
          const DateConverter().fromJson(json['initialDate'] as String),
      endDate: const DateConverter().fromJson(json['endDate'] as String),
    );

Map<String, dynamic> _$$VatDtoImplToJson(_$VatDtoImpl instance) =>
    <String, dynamic>{
      'vatId': instance.vatId,
      'percentage': instance.percentage,
      'description': instance.description,
      'initialDate': const DateConverter().toJson(instance.initialDate),
      'endDate': const DateConverter().toJson(instance.endDate),
    };

_$InvoiceSerialNumberDtoImpl _$$InvoiceSerialNumberDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceSerialNumberDtoImpl(
      serialNumberId: json['serialNumberId'] as int,
      erpContractId: json['erpContractId'] as int,
      type: $enumDecode(
          _$DetailedInvoiceSerialNumberTypeDtoEnumMap, json['type']),
      alias: json['alias'] as String,
      description: json['description'] as String,
      numberLast: json['numberLast'] as int,
      format: json['format'] as String,
      templateId: json['templateId'] as int,
    );

Map<String, dynamic> _$$InvoiceSerialNumberDtoImplToJson(
        _$InvoiceSerialNumberDtoImpl instance) =>
    <String, dynamic>{
      'serialNumberId': instance.serialNumberId,
      'erpContractId': instance.erpContractId,
      'type': _$DetailedInvoiceSerialNumberTypeDtoEnumMap[instance.type]!,
      'alias': instance.alias,
      'description': instance.description,
      'numberLast': instance.numberLast,
      'format': instance.format,
      'templateId': instance.templateId,
    };

const _$DetailedInvoiceSerialNumberTypeDtoEnumMap = {
  DetailedInvoiceSerialNumberTypeDto.quotation: 'QUOTATION',
  DetailedInvoiceSerialNumberTypeDto.invoice: 'INVOICE',
};

_$InvoiceAttachmentDtoImpl _$$InvoiceAttachmentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvoiceAttachmentDtoImpl(
      invoiceAttachmentId: json['invoiceAttachmentId'] as int,
      invoiceId: json['invoiceId'] as int,
      fileId: json['fileId'] as int,
    );

Map<String, dynamic> _$$InvoiceAttachmentDtoImplToJson(
        _$InvoiceAttachmentDtoImpl instance) =>
    <String, dynamic>{
      'invoiceAttachmentId': instance.invoiceAttachmentId,
      'invoiceId': instance.invoiceId,
      'fileId': instance.fileId,
    };
