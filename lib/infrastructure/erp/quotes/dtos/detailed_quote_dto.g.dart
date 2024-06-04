// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_quote_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedQuoteDtoImpl _$$DetailedQuoteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedQuoteDtoImpl(
      quotationId: json['quotationId'] as int,
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
      items: (json['items'] as List<dynamic>)
          .map((e) => QuoteItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: SerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      stakeholderAddressId: json['stakeholderAddressId'] as int,
      stakeholderTelephoneId: json['stakeholderTelephoneId'] as int,
      stakeholderEmailId: json['stakeholderEmailId'] as int,
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      status: $enumDecode(_$QuoteStatusDtoEnumMap, json['status']),
      serialNumberId: json['serialNumberId'] as int,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => FileAttachmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotalVatAmount: json['subtotalVatAmount'],
    );

Map<String, dynamic> _$$DetailedQuoteDtoImplToJson(
        _$DetailedQuoteDtoImpl instance) =>
    <String, dynamic>{
      'quotationId': instance.quotationId,
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
      'items': instance.items.map((e) => e.toJson()).toList(),
      'serialNumber': instance.serialNumber.toJson(),
      'stakeholderAddressId': instance.stakeholderAddressId,
      'stakeholderTelephoneId': instance.stakeholderTelephoneId,
      'stakeholderEmailId': instance.stakeholderEmailId,
      'issueDate': const DateConverter().toJson(instance.issueDate),
      'status': _$QuoteStatusDtoEnumMap[instance.status]!,
      'serialNumberId': instance.serialNumberId,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'subtotalVatAmount': instance.subtotalVatAmount,
    };

const _$QuoteStatusDtoEnumMap = {
  QuoteStatusDto.draft: 'DRAFT',
  QuoteStatusDto.created: 'CREATED',
  QuoteStatusDto.sent: 'SENT',
  QuoteStatusDto.accepted: 'ACCEPTED',
  QuoteStatusDto.cancelled: 'CANCELLED',
};
