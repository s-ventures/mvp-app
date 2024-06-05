// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseItemDtoImpl _$$ExpenseItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseItemDtoImpl(
      relativeOrder: (json['relativeOrder'] as num).toInt(),
      itemCode: json['itemCode'] as String,
      description: json['description'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitOfMeasure:
          $enumDecode(_$UnitOfMeasureDtoEnumMap, json['unitOfMeasure']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      vatAmount: (json['vatAmount'] as num).toDouble(),
      expenseItemsId: (json['expenseItemsId'] as num).toInt(),
      expenseId: (json['expenseId'] as num).toInt(),
      vat: VatDto.fromJson(json['vat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpenseItemDtoImplToJson(
        _$ExpenseItemDtoImpl instance) =>
    <String, dynamic>{
      'relativeOrder': instance.relativeOrder,
      'itemCode': instance.itemCode,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitOfMeasure': _$UnitOfMeasureDtoEnumMap[instance.unitOfMeasure]!,
      'price': instance.price,
      'discount': instance.discount,
      'vatAmount': instance.vatAmount,
      'expenseItemsId': instance.expenseItemsId,
      'expenseId': instance.expenseId,
      'vat': instance.vat.toJson(),
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
