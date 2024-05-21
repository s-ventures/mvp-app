// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_card_transactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateCardTransactionsDtoImpl _$$DateCardTransactionsDtoImplFromJson(Map<String, dynamic> json) =>
    _$DateCardTransactionsDtoImpl(
      date: json['date'] as String,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => SimplifiedCardTransactionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DateCardTransactionsDtoImplToJson(_$DateCardTransactionsDtoImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };
