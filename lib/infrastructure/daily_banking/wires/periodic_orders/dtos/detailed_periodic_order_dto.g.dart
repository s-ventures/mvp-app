// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_periodic_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedPeriodicOrderDtoImpl _$$DetailedPeriodicOrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$DetailedPeriodicOrderDtoImpl(
      periodicTransferId: json['periodicTransferId'] as int,
      accountId: json['accountId'] as int,
      customerId: json['customerId'] as int,
      beneficiaryAccount: json['beneficiaryAccount'] as String,
      beneficiaryName: json['beneficiaryName'] as String,
      beneficiaryAddress: json['beneficiaryAddress'] as String?,
      beneficiaryCountryCode2char: json['beneficiaryCountryCode2char'] as String,
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null ? null : DateTime.parse(json['endDate'] as String),
      frecuency: $enumDecode(_$PeriodicOrderFrecuencyTypeDtoEnumMap, json['frecuency']),
      status: $enumDecode(_$PeriodicOrderStatusTypeDtoEnumMap, json['status']),
      baasTransferId: json['baasTransferId'] as String,
      concept: json['concept'] as String?,
    );

Map<String, dynamic> _$$DetailedPeriodicOrderDtoImplToJson(
        _$DetailedPeriodicOrderDtoImpl instance) =>
    <String, dynamic>{
      'periodicTransferId': instance.periodicTransferId,
      'accountId': instance.accountId,
      'customerId': instance.customerId,
      'beneficiaryAccount': instance.beneficiaryAccount,
      'beneficiaryName': instance.beneficiaryName,
      'beneficiaryAddress': instance.beneficiaryAddress,
      'beneficiaryCountryCode2char': instance.beneficiaryCountryCode2char,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'frecuency': _$PeriodicOrderFrecuencyTypeDtoEnumMap[instance.frecuency]!,
      'status': _$PeriodicOrderStatusTypeDtoEnumMap[instance.status]!,
      'baasTransferId': instance.baasTransferId,
      'concept': instance.concept,
    };

const _$PeriodicOrderFrecuencyTypeDtoEnumMap = {
  PeriodicOrderFrecuencyTypeDto.daily: 'DAILY',
  PeriodicOrderFrecuencyTypeDto.weekly: 'WEEKLY',
  PeriodicOrderFrecuencyTypeDto.monthly: 'MONTHLY',
};

const _$PeriodicOrderStatusTypeDtoEnumMap = {
  PeriodicOrderStatusTypeDto.sent: 'SENT',
  PeriodicOrderStatusTypeDto.received: 'RECEIVED',
  PeriodicOrderStatusTypeDto.cancelled: 'CANCELLED',
  PeriodicOrderStatusTypeDto.pending: 'PENDING',
  PeriodicOrderStatusTypeDto.rejected: 'REJECTED',
};
