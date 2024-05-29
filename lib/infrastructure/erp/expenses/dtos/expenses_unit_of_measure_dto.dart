// [ UNIT, GR, KG, CM, M, M2, CL, L, M3, HOUR, DAY, MONTH, YEAR ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/expenses/entities/expenses_unit_of_measure.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ExpensesUnitOfMeasureDto {
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

extension ExpensesUnitOfMeasureDtoX on ExpensesUnitOfMeasureDto {
  ExpensesUnitOfMeasure toDomain() => switch (this) {
        ExpensesUnitOfMeasureDto.unit => ExpensesUnitOfMeasure.unit,
        ExpensesUnitOfMeasureDto.gr => ExpensesUnitOfMeasure.gr,
        ExpensesUnitOfMeasureDto.kg => ExpensesUnitOfMeasure.kg,
        ExpensesUnitOfMeasureDto.cm => ExpensesUnitOfMeasure.cm,
        ExpensesUnitOfMeasureDto.m => ExpensesUnitOfMeasure.m,
        ExpensesUnitOfMeasureDto.m2 => ExpensesUnitOfMeasure.m2,
        ExpensesUnitOfMeasureDto.cl => ExpensesUnitOfMeasure.cl,
        ExpensesUnitOfMeasureDto.l => ExpensesUnitOfMeasure.l,
        ExpensesUnitOfMeasureDto.m3 => ExpensesUnitOfMeasure.m3,
        ExpensesUnitOfMeasureDto.hour => ExpensesUnitOfMeasure.hour,
        ExpensesUnitOfMeasureDto.day => ExpensesUnitOfMeasure.day,
        ExpensesUnitOfMeasureDto.month => ExpensesUnitOfMeasure.month,
        ExpensesUnitOfMeasureDto.year => ExpensesUnitOfMeasure.year,
      };
}
