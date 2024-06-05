// [ UNIT, GR, KG, CM, M, M2, CL, L, M3, HOUR, DAY, MONTH, YEAR ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/unit_of_measure.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum UnitOfMeasureDto {
  unit,
  gr,
  kg,
  cm,
  m,
  m2,
  cl,
  l,
  m3,
  hour,
  day,
  month,
  year;
}

extension UnitOfMeasureDtoX on UnitOfMeasureDto {
  UnitOfMeasure toDomain() => switch (this) {
        UnitOfMeasureDto.unit => UnitOfMeasure.unit,
        UnitOfMeasureDto.gr => UnitOfMeasure.gr,
        UnitOfMeasureDto.kg => UnitOfMeasure.kg,
        UnitOfMeasureDto.cm => UnitOfMeasure.cm,
        UnitOfMeasureDto.m => UnitOfMeasure.m,
        UnitOfMeasureDto.m2 => UnitOfMeasure.m2,
        UnitOfMeasureDto.cl => UnitOfMeasure.cl,
        UnitOfMeasureDto.l => UnitOfMeasure.l,
        UnitOfMeasureDto.m3 => UnitOfMeasure.m3,
        UnitOfMeasureDto.hour => UnitOfMeasure.hour,
        UnitOfMeasureDto.day => UnitOfMeasure.day,
        UnitOfMeasureDto.month => UnitOfMeasure.month,
        UnitOfMeasureDto.year => UnitOfMeasure.year,
      };
}
