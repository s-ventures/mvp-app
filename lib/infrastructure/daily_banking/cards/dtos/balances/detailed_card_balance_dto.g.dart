// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_card_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedCardBalanceDtoImpl _$$DetailedCardBalanceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedCardBalanceDtoImpl(
      cardId: json['cardId'] as int,
      date: json['date'] as String,
      atmWithdrawalLimit: (json['atmWithdrawalLimit'] as num).toDouble(),
      atmDailyLimit: (json['atmDailyLimit'] as num).toDouble(),
      atmMonthlyLimit: (json['atmMonthlyLimit'] as num).toDouble(),
      posOrderLimit: (json['posOrderLimit'] as num).toDouble(),
      posDailyLimit: (json['posDailyLimit'] as num).toDouble(),
      posMonthlyLimit: (json['posMonthlyLimit'] as num).toDouble(),
    );

Map<String, dynamic> _$$DetailedCardBalanceDtoImplToJson(
        _$DetailedCardBalanceDtoImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'date': instance.date,
      'atmWithdrawalLimit': instance.atmWithdrawalLimit,
      'atmDailyLimit': instance.atmDailyLimit,
      'atmMonthlyLimit': instance.atmMonthlyLimit,
      'posOrderLimit': instance.posOrderLimit,
      'posDailyLimit': instance.posDailyLimit,
      'posMonthlyLimit': instance.posMonthlyLimit,
    };
