// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_card_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedCardTransactionDto _$DetailedCardTransactionDtoFromJson(
        Map<String, dynamic> json) =>
    DetailedCardTransactionDto(
      movementId: (json['movementId'] as num).toInt(),
      postingDate:
          const DateConverter().fromJson(json['postingDate'] as String),
      valueDate: const DateConverter().fromJson(json['valueDate'] as String),
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
      description: json['description'] as String,
      analyticsCategory: json['analyticsCategory'] as String?,
      userComments: json['userComments'] as String?,
      userCategory: json['userCategory'] as String?,
      placeId: json['placeId'] as String?,
      cardId: (json['cardId'] as num).toInt(),
      responseCode: json['responseCode'] as String,
      merchantName: json['merchantName'] as String,
      concept: json['concept'] as String,
      postingTime: json['postingTime'] as String,
      accountMovementId: (json['accountMovementId'] as num).toInt(),
      productType: $enumDecode(_$ProductTypeDtoEnumMap, json['productType']),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map(
              (e) => FileAttachmentInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailedCardTransactionDtoToJson(
    DetailedCardTransactionDto instance) {
  final val = <String, dynamic>{
    'movementId': instance.movementId,
    'postingDate': const DateConverter().toJson(instance.postingDate),
    'valueDate': const DateConverter().toJson(instance.valueDate),
    'amount': instance.amount,
    'currencyCode': instance.currencyCode,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('analyticsCategory', instance.analyticsCategory);
  writeNotNull('userComments', instance.userComments);
  writeNotNull('userCategory', instance.userCategory);
  writeNotNull('placeId', instance.placeId);
  val['cardId'] = instance.cardId;
  val['responseCode'] = instance.responseCode;
  val['merchantName'] = instance.merchantName;
  val['concept'] = instance.concept;
  val['postingTime'] = instance.postingTime;
  val['accountMovementId'] = instance.accountMovementId;
  val['productType'] = _$ProductTypeDtoEnumMap[instance.productType]!;
  writeNotNull(
      'attachments', instance.attachments?.map((e) => e.toJson()).toList());
  return val;
}

const _$ProductTypeDtoEnumMap = {
  ProductTypeDto.accounts: 'ACCOUNTS',
  ProductTypeDto.cards: 'CARDS',
  ProductTypeDto.aggregatedAccounts: 'AGGREGATED_ACCOUNTS',
  ProductTypeDto.unknown: 'UNKNOWN',
};
