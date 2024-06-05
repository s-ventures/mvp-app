// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDtoImpl _$$PaymentDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDtoImpl(
      referenceId: (json['referenceId'] as num).toInt(),
      expenseId: (json['expenseId'] as num).toInt(),
      origin: $enumDecode(_$PaymentOriginDtoEnumMap, json['origin']),
      bankMovId: (json['bankMovId'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      additionalInfo: json['additionalInfo'] as String,
      status: $enumDecode(_$PaymentStatusDtoEnumMap, json['status']),
    );

Map<String, dynamic> _$$PaymentDtoImplToJson(_$PaymentDtoImpl instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'expenseId': instance.expenseId,
      'origin': _$PaymentOriginDtoEnumMap[instance.origin]!,
      'bankMovId': instance.bankMovId,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'additionalInfo': instance.additionalInfo,
      'status': _$PaymentStatusDtoEnumMap[instance.status]!,
    };

const _$PaymentOriginDtoEnumMap = {
  PaymentOriginDto.cash: 'CASH',
  PaymentOriginDto.bankProduct: 'BANK_PRODUCT',
  PaymentOriginDto.bankProductExternal: 'BANK_PRODUCT_EXTERNAL',
};

const _$PaymentStatusDtoEnumMap = {
  PaymentStatusDto.pending: 'PENDING',
  PaymentStatusDto.confirmed: 'CONFIRMED',
};
