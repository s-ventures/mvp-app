// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_account_transactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateAccountTransactionsDtoImpl _$$DateAccountTransactionsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DateAccountTransactionsDtoImpl(
      date: json['date'] as String,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => SimplifiedAccountTransactionDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DateAccountTransactionsDtoImplToJson(
        _$DateAccountTransactionsDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };
