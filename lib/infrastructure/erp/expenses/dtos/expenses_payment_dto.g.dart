// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpensesPaymentDtoImpl _$$ExpensesPaymentDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpensesPaymentDtoImpl(
      referenceId: json['referenceId'] as int,
      expenseId: json['expenseId'] as int,
      origin: $enumDecode(_$ExpensesPaymentOriginDtoEnumMap, json['origin']),
      bankMovId: json['bankMovId'] as int,
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      additionalInfo: json['additionalInfo'] as String,
      status: $enumDecode(_$ExpensesPaymentStatusDtoEnumMap, json['status']),
    );

Map<String, dynamic> _$$ExpensesPaymentDtoImplToJson(
        _$ExpensesPaymentDtoImpl instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'expenseId': instance.expenseId,
      'origin': _$ExpensesPaymentOriginDtoEnumMap[instance.origin]!,
      'bankMovId': instance.bankMovId,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'additionalInfo': instance.additionalInfo,
      'status': _$ExpensesPaymentStatusDtoEnumMap[instance.status]!,
    };

const _$ExpensesPaymentOriginDtoEnumMap = {
  ExpensesPaymentOriginDto.cash: 'CASH',
  ExpensesPaymentOriginDto.bankProduct: 'BANK_PRODUCT',
  ExpensesPaymentOriginDto.bankProductExternal: 'BANK_PRODUCT_EXTERNAL',
};

const _$ExpensesPaymentStatusDtoEnumMap = {
  ExpensesPaymentStatusDto.pending: 'PENDING',
  ExpensesPaymentStatusDto.confirmed: 'CONFIRMED',
};
