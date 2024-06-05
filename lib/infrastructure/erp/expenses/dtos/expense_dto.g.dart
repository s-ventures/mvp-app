// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseDtoImpl _$$ExpenseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseDtoImpl(
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
      expenseId: (json['expenseId'] as num).toInt(),
      issuedDate: json['issuedDate'] == null
          ? null
          : DateTime.parse(json['issuedDate'] as String),
      vatAmount: (json['vatAmount'] as num?)?.toDouble(),
      vatPercentage: (json['vatPercentage'] as num?)?.toDouble(),
      status: $enumDecode(_$ExpenseStatusDtoEnumMap, json['status']),
      accountingTypeCode: json['accountingTypeCode'] as String?,
      fullName: json['fullName'] as String,
      documentTypeCode:
          $enumDecode(_$DocumentTypeCodeDtoEnumMap, json['documentTypeCode']),
      documentNumber: json['documentNumber'] as String,
    );

Map<String, dynamic> _$$ExpenseDtoImplToJson(_$ExpenseDtoImpl instance) =>
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
      'expenseId': instance.expenseId,
      'issuedDate': instance.issuedDate?.toIso8601String(),
      'vatAmount': instance.vatAmount,
      'vatPercentage': instance.vatPercentage,
      'status': _$ExpenseStatusDtoEnumMap[instance.status]!,
      'accountingTypeCode': instance.accountingTypeCode,
      'fullName': instance.fullName,
      'documentTypeCode':
          _$DocumentTypeCodeDtoEnumMap[instance.documentTypeCode]!,
      'documentNumber': instance.documentNumber,
    };

const _$ExpenseStatusDtoEnumMap = {
  ExpenseStatusDto.draft: 'DRAFT',
  ExpenseStatusDto.received: 'RECEIVED',
  ExpenseStatusDto.halfPaid: 'HALF_PAID',
  ExpenseStatusDto.paid: 'PAID',
  ExpenseStatusDto.cancelled: 'CANCELLED',
};

const _$DocumentTypeCodeDtoEnumMap = {
  DocumentTypeCodeDto.dni: 'DNI',
  DocumentTypeCodeDto.nie: 'NIE',
  DocumentTypeCodeDto.nif: 'NIF',
  DocumentTypeCodeDto.passport: 'PASSPORT',
};
