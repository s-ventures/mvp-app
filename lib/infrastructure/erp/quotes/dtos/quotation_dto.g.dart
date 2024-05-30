// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotationDtoImpl _$$QuotationDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuotationDtoImpl(
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
      quotationId: (json['quotationId'] as num).toInt(),
      stakeholderAddressId: (json['stakeholderAddressId'] as num?)?.toInt(),
      stakeholderTelephoneId: (json['stakeholderTelephoneId'] as num?)?.toInt(),
      stakeholderEmailId: (json['stakeholderEmailId'] as num?)?.toInt(),
      sentDate: json['sentDate'] == null
          ? null
          : DateTime.parse(json['sentDate'] as String),
      status: $enumDecode(_$QuotationStatusDtoEnumMap, json['status']),
      serialNumberId: (json['serialNumberId'] as num?)?.toInt(),
      fullName: json['fullName'] as String,
      documentTypeCode:
          $enumDecode(_$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String,
    );

Map<String, dynamic> _$$QuotationDtoImplToJson(_$QuotationDtoImpl instance) =>
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
      'quotationId': instance.quotationId,
      'stakeholderAddressId': instance.stakeholderAddressId,
      'stakeholderTelephoneId': instance.stakeholderTelephoneId,
      'stakeholderEmailId': instance.stakeholderEmailId,
      'sentDate': instance.sentDate?.toIso8601String(),
      'status': _$QuotationStatusDtoEnumMap[instance.status]!,
      'serialNumberId': instance.serialNumberId,
      'fullName': instance.fullName,
      'documentTypeCode':
          _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]!,
      'documentNumber': instance.documentNumber,
    };

const _$QuotationStatusDtoEnumMap = {
  QuotationStatusDto.draft: 'DRAFT',
  QuotationStatusDto.created: 'CREATED',
  QuotationStatusDto.sent: 'SENT',
  QuotationStatusDto.cancelled: 'CANCELLED',
};

const _$DocumentTypeCodeDtoEnumMap = {
  DocumentTypeCodeDto.dni: 'DNI',
  DocumentTypeCodeDto.nie: 'NIE',
  DocumentTypeCodeDto.nif: 'NIF',
  DocumentTypeCodeDto.passport: 'PASSPORT',
};
