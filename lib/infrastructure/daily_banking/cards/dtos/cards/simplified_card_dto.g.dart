// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedCardDtoImpl _$$SimplifiedCardDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedCardDtoImpl(
      cardId: (json['cardId'] as num).toInt(),
      alias: json['alias'] as String,
      cardType: $enumDecode(_$CardTypeDtoEnumMap, json['cardType']),
      status: $enumDecode(_$CardStatusDtoEnumMap, json['status']),
      cardName: json['cardName'] as String,
      brand: json['brand'] as String,
      cardEncryptedNumber: json['cardEncryptedNumber'] as String,
      category: $enumDecode(_$CardCategoryDtoEnumMap, json['category']),
      plan: $enumDecode(_$CardPlanDtoEnumMap, json['plan']),
      cardContract: CardContractDto.fromJson(
          json['cardContract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SimplifiedCardDtoImplToJson(
        _$SimplifiedCardDtoImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'alias': instance.alias,
      'cardType': _$CardTypeDtoEnumMap[instance.cardType]!,
      'status': _$CardStatusDtoEnumMap[instance.status]!,
      'cardName': instance.cardName,
      'brand': instance.brand,
      'cardEncryptedNumber': instance.cardEncryptedNumber,
      'category': _$CardCategoryDtoEnumMap[instance.category]!,
      'plan': _$CardPlanDtoEnumMap[instance.plan]!,
      'cardContract': instance.cardContract.toJson(),
    };

const _$CardTypeDtoEnumMap = {
  CardTypeDto.credit: 'CREDIT',
  CardTypeDto.debit: 'DEBIT',
  CardTypeDto.virtual: 'VIRTUAL',
};

const _$CardStatusDtoEnumMap = {
  CardStatusDto.active: 'ACTIVE',
  CardStatusDto.cancelled: 'CANCELLED',
  CardStatusDto.blocked: 'BLOCKED',
};

const _$CardCategoryDtoEnumMap = {
  CardCategoryDto.visa: 'VISA',
  CardCategoryDto.mastercard: 'MASTERCARD',
};

const _$CardPlanDtoEnumMap = {
  CardPlanDto.basic: 'BASIC',
  CardPlanDto.premium: 'PREMIUM',
};
