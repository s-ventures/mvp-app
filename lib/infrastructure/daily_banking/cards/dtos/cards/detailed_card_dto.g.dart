// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedCardDtoImpl _$$DetailedCardDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedCardDtoImpl(
      cardId: (json['cardId'] as num).toInt(),
      brand: json['brand'] as String,
      cardType: $enumDecode(_$CardTypeDtoEnumMap, json['cardType']),
      cardName: json['cardName'] as String,
      createDate: json['createDate'] as String,
      deliveryDate: json['deliveryDate'] as String,
      activateDate: json['activateDate'] as String,
      currencyCode: json['currencyCode'] as String,
      status: $enumDecode(_$CardStatusDtoEnumMap, json['status']),
      cardEncryptedNumber: json['cardEncryptedNumber'] as String,
      cardContract: CardContractDto.fromJson(
          json['cardContract'] as Map<String, dynamic>),
      balance: json['balance'] == null
          ? null
          : SimplifiedCardBalanceDto.fromJson(
              json['balance'] as Map<String, dynamic>),
      dueDate: json['dueDate'] as String?,
      statusReason: json['statusReason'] as String?,
      cvv: json['cvv'] as String?,
    );

Map<String, dynamic> _$$DetailedCardDtoImplToJson(
        _$DetailedCardDtoImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'brand': instance.brand,
      'cardType': _$CardTypeDtoEnumMap[instance.cardType]!,
      'cardName': instance.cardName,
      'createDate': instance.createDate,
      'deliveryDate': instance.deliveryDate,
      'activateDate': instance.activateDate,
      'currencyCode': instance.currencyCode,
      'status': _$CardStatusDtoEnumMap[instance.status]!,
      'cardEncryptedNumber': instance.cardEncryptedNumber,
      'cardContract': instance.cardContract.toJson(),
      'balance': instance.balance?.toJson(),
      'dueDate': instance.dueDate,
      'statusReason': instance.statusReason,
      'cvv': instance.cvv,
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
