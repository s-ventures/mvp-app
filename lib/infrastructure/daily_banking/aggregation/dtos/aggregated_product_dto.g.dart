// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregated_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AggregatedProductDtoImpl _$$AggregatedProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$AggregatedProductDtoImpl(
      id: json['id'] as String,
      financialInstitutionId: json['financialInstitutionId'] as String,
      financialInstitutionName: json['financialInstitutionName'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$TypeDtoEnumMap, json['type']),
    );

Map<String, dynamic> _$$AggregatedProductDtoImplToJson(_$AggregatedProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'financialInstitutionId': instance.financialInstitutionId,
      'financialInstitutionName': instance.financialInstitutionName,
      'name': instance.name,
      'type': _$TypeDtoEnumMap[instance.type]!,
    };

const _$TypeDtoEnumMap = {
  TypeDto.undefined: 'UNDEFINED',
  TypeDto.checking: 'CHECKING',
  TypeDto.savings: 'SAVINGS',
  TypeDto.creditCard: 'CREDIT_CARD',
};
