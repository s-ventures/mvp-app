// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VatDtoImpl _$$VatDtoImplFromJson(Map<String, dynamic> json) => _$VatDtoImpl(
      vatId: (json['vatId'] as num).toInt(),
      percentage: (json['percentage'] as num).toInt(),
      description: json['description'] as String,
      initialDate:
          const DateConverter().fromJson(json['initialDate'] as String),
      endDate: const DateConverter().fromJson(json['endDate'] as String),
    );

Map<String, dynamic> _$$VatDtoImplToJson(_$VatDtoImpl instance) =>
    <String, dynamic>{
      'vatId': instance.vatId,
      'percentage': instance.percentage,
      'description': instance.description,
      'initialDate': const DateConverter().toJson(instance.initialDate),
      'endDate': const DateConverter().toJson(instance.endDate),
    };
