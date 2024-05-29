// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedExpenseDtoImpl _$$DetailedExpenseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedExpenseDtoImpl(
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
          .map((e) => ExpensesItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNumber: ExpenseSerialNumberDto.fromJson(
          json['serialNumber'] as Map<String, dynamic>),
      expenseId: json['expenseId'] as int,
      issueDate: const DateConverter().fromJson(json['issueDate'] as String),
      vatAmount: (json['vatAmount'] as num).toDouble(),
      vatPercentage: (json['vatPercentage'] as num).toDouble(),
      status: $enumDecode(_$ExpensesStatusDtoEnumMap, json['status']),
      accountingTypeCode: json['accountingTypeCode'] as String,
      payments: (json['payments'] as List<dynamic>)
          .map((e) => ExpensesPaymentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => ExpensesAttachmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullName: json['fullName'] as String,
      documentTypeCode: json['documentTypeCode'] as String,
      documentNumber: json['documentNumber'] as String,
      subtotalVatAmount: json['subtotalVatAmount'],
    );

Map<String, dynamic> _$$DetailedExpenseDtoImplToJson(
        _$DetailedExpenseDtoImpl instance) =>
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
      'items': instance.items.map((e) => e.toJson()).toList(),
      'serialNumber': instance.serialNumber.toJson(),
      'expenseId': instance.expenseId,
      'issueDate': const DateConverter().toJson(instance.issueDate),
      'vatAmount': instance.vatAmount,
      'vatPercentage': instance.vatPercentage,
      'status': _$ExpensesStatusDtoEnumMap[instance.status]!,
      'accountingTypeCode': instance.accountingTypeCode,
      'payments': instance.payments.map((e) => e.toJson()).toList(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'fullName': instance.fullName,
      'documentTypeCode': instance.documentTypeCode,
      'documentNumber': instance.documentNumber,
      'subtotalVatAmount': instance.subtotalVatAmount,
    };

const _$ExpensesStatusDtoEnumMap = {
  ExpensesStatusDto.received: 'RECEIVED',
  ExpensesStatusDto.halfPaid: 'HALF_PAID',
  ExpensesStatusDto.paid: 'PAID',
  ExpensesStatusDto.cancelled: 'CANCELLED',
  ExpensesStatusDto.draft: 'DRAFT',
};
