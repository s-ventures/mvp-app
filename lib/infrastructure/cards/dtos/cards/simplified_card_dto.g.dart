// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simplified_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimplifiedCardDtoImpl _$$SimplifiedCardDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SimplifiedCardDtoImpl(
      cardId: json['cardId'] as int,
      brand: json['brand'] as String,
      cardType: $enumDecode(_$CardTypeDtoEnumMap, json['cardType']),
      cardName: json['cardName'] as String,
      status: $enumDecode(_$CardStatusDtoEnumMap, json['status']),
      cardEncryptedNumber: json['cardEncryptedNumber'] as String,
      cardContract: CardContractDto.fromJson(
          json['cardContract'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SimplifiedCardDtoImplToJson(
        _$SimplifiedCardDtoImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'brand': instance.brand,
      'cardType': _$CardTypeDtoEnumMap[instance.cardType]!,
      'cardName': instance.cardName,
      'status': _$CardStatusDtoEnumMap[instance.status]!,
      'cardEncryptedNumber': instance.cardEncryptedNumber,
      'cardContract': instance.cardContract.toJson(),
    };

const _$CardTypeDtoEnumMap = {
  CardTypeDto.credit: 'CREDIT',
  CardTypeDto.debit: 'DEBIT',
};

const _$CardStatusDtoEnumMap = {
  CardStatusDto.active: 'ACTIVE',
  CardStatusDto.cancelled: 'CANCELLED',
  CardStatusDto.blocked: 'BLOCKED',
};
