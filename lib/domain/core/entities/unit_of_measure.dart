// [ UNIT, GR, KG, CM, M, M2, CL, L, M3, HOUR, DAY, MONTH, YEAR ]

import 'package:manifiesto_mvp_app/infrastructure/core/dtos/unit_of_measure_dto.dart';

enum UnitOfMeasure {
  unit('unit'),
  gr('gr'),
  kg('kg'),
  cm('cm'),
  m('m'),
  m2('m2'),
  cl('cl'),
  l('l'),
  m3('m3'),
  hour('hour'),
  day('day'),
  month('month'),
  year('year');

  const UnitOfMeasure(this.name);
  final String name;
}

extension UnitOfMeasureX on UnitOfMeasure {
  UnitOfMeasureDto toDto() => switch (this) {
        UnitOfMeasure.unit => UnitOfMeasureDto.unit,
        UnitOfMeasure.gr => UnitOfMeasureDto.gr,
        UnitOfMeasure.kg => UnitOfMeasureDto.kg,
        UnitOfMeasure.cm => UnitOfMeasureDto.cm,
        UnitOfMeasure.m => UnitOfMeasureDto.m,
        UnitOfMeasure.m2 => UnitOfMeasureDto.m2,
        UnitOfMeasure.cl => UnitOfMeasureDto.cl,
        UnitOfMeasure.l => UnitOfMeasureDto.l,
        UnitOfMeasure.m3 => UnitOfMeasureDto.m3,
        UnitOfMeasure.hour => UnitOfMeasureDto.hour,
        UnitOfMeasure.day => UnitOfMeasureDto.day,
        UnitOfMeasure.month => UnitOfMeasureDto.month,
        UnitOfMeasure.year => UnitOfMeasureDto.year,
      };
}
