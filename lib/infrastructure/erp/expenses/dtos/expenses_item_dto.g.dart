// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpensesItemDtoImpl _$$ExpensesItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpensesItemDtoImpl(
      relativeOrder: json['relativeOrder'] as int,
      itemCode: json['itemCode'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      unitOfMeasure:
          $enumDecode(_$ExpensesUnitOfMeasureDtoEnumMap, json['unitOfMeasure']),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      vat: VatDto.fromJson(json['vat'] as Map<String, dynamic>),
      vatAmount: json['vatAmount'] as int,
      expenseItemsId: json['expenseItemsId'] as int,
      expenseId: json['expenseId'] as int,
    );

Map<String, dynamic> _$$ExpensesItemDtoImplToJson(
        _$ExpensesItemDtoImpl instance) =>
    <String, dynamic>{
      'relativeOrder': instance.relativeOrder,
      'itemCode': instance.itemCode,
      'description': instance.description,
      'quantity': instance.quantity,
      'unitOfMeasure':
          _$ExpensesUnitOfMeasureDtoEnumMap[instance.unitOfMeasure]!,
      'price': instance.price,
      'discount': instance.discount,
      'vat': instance.vat.toJson(),
      'vatAmount': instance.vatAmount,
      'expenseItemsId': instance.expenseItemsId,
      'expenseId': instance.expenseId,
    };

const _$ExpensesUnitOfMeasureDtoEnumMap = {
  ExpensesUnitOfMeasureDto.unit: 'UNIT',
  ExpensesUnitOfMeasureDto.gr: 'GR',
  ExpensesUnitOfMeasureDto.kg: 'KG',
  ExpensesUnitOfMeasureDto.cm: 'CM',
  ExpensesUnitOfMeasureDto.m: 'M',
  ExpensesUnitOfMeasureDto.m2: 'M2',
  ExpensesUnitOfMeasureDto.cl: 'CL',
  ExpensesUnitOfMeasureDto.l: 'L',
  ExpensesUnitOfMeasureDto.m3: 'M3',
  ExpensesUnitOfMeasureDto.hour: 'HOUR',
  ExpensesUnitOfMeasureDto.day: 'DAY',
  ExpensesUnitOfMeasureDto.month: 'MONTH',
  ExpensesUnitOfMeasureDto.year: 'YEAR',
};
