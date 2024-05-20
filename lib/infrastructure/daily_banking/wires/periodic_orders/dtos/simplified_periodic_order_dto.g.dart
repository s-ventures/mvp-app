// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_periodic_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedPeriodicOrderDtoImpl _$$SimplifiedPeriodicOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedPeriodicOrderDtoImpl(
      periodicTransferId: json['periodicTransferId'] as int,
      accountId: json['accountId'] as int,
      customerId: json['customerId'] as int,
      beneficiaryAccount: json['beneficiaryAccount'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      status: $enumDecodeNullable(_$PeriodicOrderStatusTypeDtoEnumMap, json['status']),
      concept: json['concept'] as String?,
      frecuency: $enumDecodeNullable(_$PeriodicOrderFrecuencyTypeDtoEnumMap, json['frecuency']),
      startDate: json['startDate'] == null ? null : DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$$SimplifiedPeriodicOrderDtoImplToJson(
        _$SimplifiedPeriodicOrderDtoImpl instance) =>
    <String, dynamic>{
      'periodicTransferId': instance.periodicTransferId,
      'accountId': instance.accountId,
      'customerId': instance.customerId,
      'beneficiaryAccount': instance.beneficiaryAccount,
      'beneficiaryName': instance.beneficiaryName,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'status': _$PeriodicOrderStatusTypeDtoEnumMap[instance.status],
      'concept': instance.concept,
      'frecuency': _$PeriodicOrderFrecuencyTypeDtoEnumMap[instance.frecuency],
      'startDate': instance.startDate?.toIso8601String(),
    };

const _$PeriodicOrderStatusTypeDtoEnumMap = {
  PeriodicOrderStatusTypeDto.sent: 'SENT',
  PeriodicOrderStatusTypeDto.received: 'RECEIVED',
  PeriodicOrderStatusTypeDto.cancelled: 'CANCELLED',
  PeriodicOrderStatusTypeDto.pending: 'PENDING',
  PeriodicOrderStatusTypeDto.rejected: 'REJECTED',
};

const _$PeriodicOrderFrecuencyTypeDtoEnumMap = {
  PeriodicOrderFrecuencyTypeDto.daily: 'DAILY',
  PeriodicOrderFrecuencyTypeDto.weekly: 'WEEKLY',
  PeriodicOrderFrecuencyTypeDto.monthly: 'MONTHLY',
};
