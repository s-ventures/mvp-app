// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountBalanceDtoImpl _$$AccountBalanceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountBalanceDtoImpl(
      accountId: json['accountId'] as int,
      date: json['date'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      withholding: (json['withholding'] as num?)?.toDouble(),
      overdraftLimit: (json['overdraftLimit'] as num?)?.toDouble(),
      overdraftAmount: (json['overdraftAmount'] as num?)?.toDouble(),
      unpaidBalance: (json['unpaidBalance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AccountBalanceDtoImplToJson(
        _$AccountBalanceDtoImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'date': instance.date,
      'balance': instance.balance,
      'withholding': instance.withholding,
      'overdraftLimit': instance.overdraftLimit,
      'overdraftAmount': instance.overdraftAmount,
      'unpaidBalance': instance.unpaidBalance,
    };
