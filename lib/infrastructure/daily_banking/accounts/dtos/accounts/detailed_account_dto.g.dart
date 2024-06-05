// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedAccountDtoImpl _$$DetailedAccountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedAccountDtoImpl(
      accountId: json['accountId'] as int,
      entity: AccountEntityDto.fromJson(json['entity'] as Map<String, dynamic>),
      branch: json['branch'] as String,
      number: json['number'] as String,
      status: $enumDecode(_$AccountStatusDtoEnumMap, json['status']),
      createDate: json['createDate'] as String,
      activateDate: json['activateDate'] as String,
      closureDate: json['closureDate'] as String?,
      currencyCode: json['currencyCode'] as String,
      dispositionType: $enumDecode(
          _$AccountDispositionTypeDtoEnumMap, json['dispositionType']),
      dispositionNumber: json['dispositionNumber'] as String,
      lastOperationDate: json['lastOperationDate'] as String,
      alias: json['alias'] as String,
      bicSwift: json['bicSwift'] as String,
      name: json['name'] as String,
      balance:
          AccountBalanceDto.fromJson(json['balance'] as Map<String, dynamic>),
      accountHolder: json['accountHolder'] as String?,
    );

Map<String, dynamic> _$$DetailedAccountDtoImplToJson(
        _$DetailedAccountDtoImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'entity': instance.entity.toJson(),
      'branch': instance.branch,
      'number': instance.number,
      'status': _$AccountStatusDtoEnumMap[instance.status]!,
      'createDate': instance.createDate,
      'activateDate': instance.activateDate,
      'closureDate': instance.closureDate,
      'currencyCode': instance.currencyCode,
      'dispositionType':
          _$AccountDispositionTypeDtoEnumMap[instance.dispositionType]!,
      'dispositionNumber': instance.dispositionNumber,
      'lastOperationDate': instance.lastOperationDate,
      'alias': instance.alias,
      'bicSwift': instance.bicSwift,
      'name': instance.name,
      'balance': instance.balance.toJson(),
      'accountHolder': instance.accountHolder,
    };

const _$AccountStatusDtoEnumMap = {
  AccountStatusDto.pendingApproval: 'PENDING_APPROVAL',
  AccountStatusDto.approved: 'APPROVED',
  AccountStatusDto.active: 'ACTIVE',
  AccountStatusDto.closed: 'CLOSED',
  AccountStatusDto.cancelled: 'CANCELLED',
};

const _$AccountDispositionTypeDtoEnumMap = {
  AccountDispositionTypeDto.individual: 'INDIVIDUAL',
  AccountDispositionTypeDto.concurrent: 'CONCURRENT',
  AccountDispositionTypeDto.solidary: 'SOLIDARY',
};
