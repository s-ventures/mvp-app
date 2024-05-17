// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_card_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardTransactionDtoImpl _$$CardTransactionDtoImplFromJson(Map<String, dynamic> json) =>
    _$CardTransactionDtoImpl(
      movementId: json['movementId'] as int,
      postingDate: const DateConverter().fromJson(json['postingDate'] as String),
      valueDate: const DateConverter().fromJson(json['valueDate'] as String),
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      analyticsCategory: json['analyticsCategory'] as String?,
      userCategory: json['userCategory'] as String?,
      cardId: json['cardId'] as int,
      responseCode: json['responseCode'] as String,
      concept: json['concept'] as String,
      postingTime: json['postingTime'] as String,
      productType: $enumDecode(_$ProductTypeDtoEnumMap, json['productType']),
    );

Map<String, dynamic> _$$CardTransactionDtoImplToJson(_$CardTransactionDtoImpl instance) =>
    <String, dynamic>{
      'movementId': instance.movementId,
      'postingDate': const DateConverter().toJson(instance.postingDate),
      'valueDate': const DateConverter().toJson(instance.valueDate),
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'analyticsCategory': instance.analyticsCategory,
      'userCategory': instance.userCategory,
      'cardId': instance.cardId,
      'responseCode': instance.responseCode,
      'concept': instance.concept,
      'postingTime': instance.postingTime,
      'productType': _$ProductTypeDtoEnumMap[instance.productType]!,
    };

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.accounts: 'ACCOUNTS',
  ProductTypeDto.cards: 'CARDS',
  ProductTypeDto.aggregatedAccounts: 'AGGREGATED_ACCOUNTS',
  ProductTypeDto.unknown: 'UNKNOWN',
};
