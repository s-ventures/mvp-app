// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceItemDtoImpl _$$InvoiceItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceItemDtoImpl(
      relativeOrder: json['relativeOrder'] as int,
      itemCode: json['itemCode'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      unitOfMeasure:
          $enumDecode(_$UnitOfMeasureDtoEnumMap, json['unitOfMeasure']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      vat: VatDto.fromJson(json['vat'] as Map<String, dynamic>),
      invoiceItemId: json['invoiceItemId'] as int,
      invoiceId: json['invoiceId'] as int,
    );

Map<String, dynamic> _$$InvoiceItemDtoImplToJson(
        _$InvoiceItemDtoImpl instance) =>
    <String, dynamic>{
      'relativeOrder': instance.relativeOrder,
      'itemCode': instance.itemCode,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitOfMeasure': _$UnitOfMeasureDtoEnumMap[instance.unitOfMeasure]!,
      'price': instance.price,
      'discount': instance.discount,
      'vat': instance.vat.toJson(),
      'invoiceItemId': instance.invoiceItemId,
      'invoiceId': instance.invoiceId,
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
