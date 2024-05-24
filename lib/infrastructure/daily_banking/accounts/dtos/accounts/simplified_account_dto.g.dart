// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedAccountDtoImpl _$$SimplifiedAccountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedAccountDtoImpl(
      accountId: json['accountId'] as int,
      entity: json['entity'] as String?,
      number: json['number'] as String?,
      status: $enumDecode(_$AccountStatusDtoEnumMap, json['status']),
      createDate: json['createDate'] as String?,
      currencyCode: json['currencyCode'] as String,
      balance:
          AccountBalanceDto.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SimplifiedAccountDtoImplToJson(
        _$SimplifiedAccountDtoImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'entity': instance.entity,
      'number': instance.number,
      'status': _$AccountStatusDtoEnumMap[instance.status]!,
      'createDate': instance.createDate,
      'currencyCode': instance.currencyCode,
      'balance': instance.balance.toJson(),
    };

const _$AccountStatusDtoEnumMap = {
  AccountStatusDto.pendingApproval: 'PENDING_APPROVAL',
  AccountStatusDto.approved: 'APPROVED',
  AccountStatusDto.active: 'ACTIVE',
  AccountStatusDto.closed: 'CLOSED',
  AccountStatusDto.cancelled: 'CANCELLED',
};
