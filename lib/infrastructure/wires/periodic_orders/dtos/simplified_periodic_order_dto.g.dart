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
      status: $enumDecodeNullable(
          _$PeriodicOrderStatusTypeDtoEnumMap, json['status']),
      concept: json['concept'] as String?,
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
    };

const _$PeriodicOrderStatusTypeDtoEnumMap = {
  PeriodicOrderStatusTypeDto.sent: 'SENT',
  PeriodicOrderStatusTypeDto.received: 'RECEIVED',
  PeriodicOrderStatusTypeDto.cancelled: 'CANCELLED',
  PeriodicOrderStatusTypeDto.pending: 'PENDING',
  PeriodicOrderStatusTypeDto.rejected: 'REJECTED',
};
