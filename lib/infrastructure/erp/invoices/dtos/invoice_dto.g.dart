// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceDtoImpl _$$InvoiceDtoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceDtoImpl(
      erpContractId: (json['erpContractId'] as num).toInt(),
      number: json['number'] as String?,
      stakeholderId: (json['stakeholderId'] as num).toInt(),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      createdDate: DateTime.parse(json['createdDate'] as String),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      withholdingTaxesPercentage:
          (json['withholdingTaxesPercentage'] as num?)?.toDouble(),
      fileId: (json['fileId'] as num?)?.toInt(),
      additionalInfo: json['additionalInfo'] as String?,
      statusDate: json['statusDate'] == null
          ? null
          : DateTime.parse(json['statusDate'] as String),
      withHoldingTaxesAmount:
          (json['withHoldingTaxesAmount'] as num?)?.toDouble(),
      totalWithoutTaxes: (json['totalWithoutTaxes'] as num?)?.toDouble(),
      invoiceId: (json['invoiceId'] as num).toInt(),
      stakeholderAddressId: (json['stakeholderAddressId'] as num?)?.toInt(),
      stakeholderTelephoneId: (json['stakeholderTelephoneId'] as num?)?.toInt(),
      stakeholderEmailId: (json['stakeholderEmailId'] as num?)?.toInt(),
      sentDate: json['sentDate'] == null
          ? null
          : DateTime.parse(json['sentDate'] as String),
      status: $enumDecode(_$InvoiceStatusDtoEnumMap, json['status']),
      serialNumberId: (json['serialNumberId'] as num?)?.toInt(),
      fullName: json['fullName'] as String,
      documentTypeCode:
          $enumDecode(_$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String,
    );

Map<String, dynamic> _$$InvoiceDtoImplToJson(_$InvoiceDtoImpl instance) =>
    <String, dynamic>{
      'erpContractId': instance.erpContractId,
      'number': instance.number,
      'stakeholderId': instance.stakeholderId,
      'dueDate': instance.dueDate?.toIso8601String(),
      'createdDate': instance.createdDate.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'currencyCode': instance.currencyCode,
      'withholdingTaxesPercentage': instance.withholdingTaxesPercentage,
      'fileId': instance.fileId,
      'additionalInfo': instance.additionalInfo,
      'statusDate': instance.statusDate?.toIso8601String(),
      'withHoldingTaxesAmount': instance.withHoldingTaxesAmount,
      'totalWithoutTaxes': instance.totalWithoutTaxes,
      'invoiceId': instance.invoiceId,
      'stakeholderAddressId': instance.stakeholderAddressId,
      'stakeholderTelephoneId': instance.stakeholderTelephoneId,
      'stakeholderEmailId': instance.stakeholderEmailId,
      'sentDate': instance.sentDate?.toIso8601String(),
      'status': _$InvoiceStatusDtoEnumMap[instance.status]!,
      'serialNumberId': instance.serialNumberId,
      'fullName': instance.fullName,
      'documentTypeCode':
          _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]!,
      'documentNumber': instance.documentNumber,
    };

const _$InvoiceStatusDtoEnumMap = {
  InvoiceStatusDto.draft: 'DRAFT',
  InvoiceStatusDto.issued: 'ISSUED',
  InvoiceStatusDto.halfPaid: 'HALF_PAID',
  InvoiceStatusDto.paid: 'PAID',
  InvoiceStatusDto.cancelled: 'CANCELLED',
};

const _$DocumentTypeCodeDtoEnumMap = {
  DocumentTypeCodeDto.dni: 'DNI',
  DocumentTypeCodeDto.nie: 'NIE',
  DocumentTypeCodeDto.nif: 'NIF',
  DocumentTypeCodeDto.passport: 'PASSPORT',
};
