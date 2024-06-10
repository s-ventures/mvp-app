// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteItemDtoImpl _$$QuoteItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuoteItemDtoImpl(
      relativeOrder: json['relativeOrder'] as int,
      itemCode: json['itemCode'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      unitOfMeasure:
          $enumDecode(_$UnitOfMeasureDtoEnumMap, json['unitOfMeasure']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      vat: VatDto.fromJson(json['vat'] as Map<String, dynamic>),
      quotationItemId: json['quotationItemId'] as int,
      quotationId: json['quotationId'] as int,
    );

Map<String, dynamic> _$$QuoteItemDtoImplToJson(_$QuoteItemDtoImpl instance) =>
    <String, dynamic>{
      'relativeOrder': instance.relativeOrder,
      'itemCode': instance.itemCode,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitOfMeasure': _$UnitOfMeasureDtoEnumMap[instance.unitOfMeasure]!,
      'price': instance.price,
      'discount': instance.discount,
      'vat': instance.vat.toJson(),
      'quotationItemId': instance.quotationItemId,
      'quotationId': instance.quotationId,
    };

const _$UnitOfMeasureDtoEnumMap = {
  UnitOfMeasureDto.unit: 'UNIT',
  UnitOfMeasureDto.gr: 'GR',
  UnitOfMeasureDto.kg: 'KG',
  UnitOfMeasureDto.cm: 'CM',
  UnitOfMeasureDto.m: 'M',
  UnitOfMeasureDto.m2: 'M2',
  UnitOfMeasureDto.cl: 'CL',
  UnitOfMeasureDto.l: 'L',
  UnitOfMeasureDto.m3: 'M3',
  UnitOfMeasureDto.hour: 'HOUR',
  UnitOfMeasureDto.day: 'DAY',
  UnitOfMeasureDto.month: 'MONTH',
  UnitOfMeasureDto.year: 'YEAR',
};
