// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedExpenseDtoImpl _$$DetailedExpenseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedExpenseDtoImpl(
      expenseId: json['expenseId'] as int,
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
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      vatAmount: (json['vatAmount'] as num).toDouble(),
      vatPercentage: (json['vatPercentage'] as num).toDouble(),
      accountingTypeCode: json['accountingTypeCode'] as String,
      fullName: json['fullName'] as String,
      documentTypeCode: json['documentTypeCode'] as String,
      documentNumber: json['documentNumber'] as String,
      status: $enumDecode(_$ExpenseStatusDtoEnumMap, json['status']),
      items: (json['items'] as List<dynamic>)
          .map((e) => ExpenseItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotalVatAmount: json['subtotalVatAmount'],
      serialNumber: SerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      payments: (json['payments'] as List<dynamic>)
          .map((e) => PaymentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => FileAttachmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailedExpenseDtoImplToJson(
        _$DetailedExpenseDtoImpl instance) =>
    <String, dynamic>{
      'expenseId': instance.expenseId,
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
      'issueDate': const DateConverter().toJson(instance.issueDate),
      'vatAmount': instance.vatAmount,
      'vatPercentage': instance.vatPercentage,
      'accountingTypeCode': instance.accountingTypeCode,
      'fullName': instance.fullName,
      'documentTypeCode': instance.documentTypeCode,
      'documentNumber': instance.documentNumber,
      'status': _$ExpenseStatusDtoEnumMap[instance.status]!,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'subtotalVatAmount': instance.subtotalVatAmount,
      'serialNumber': instance.serialNumber.toJson(),
      'payments': instance.payments.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
    };

const _$ExpenseStatusDtoEnumMap = {
  ExpenseStatusDto.draft: 'DRAFT',
  ExpenseStatusDto.received: 'RECEIVED',
  ExpenseStatusDto.halfPaid: 'HALF_PAID',
  ExpenseStatusDto.paid: 'PAID',
  ExpenseStatusDto.cancelled: 'CANCELLED',
};
