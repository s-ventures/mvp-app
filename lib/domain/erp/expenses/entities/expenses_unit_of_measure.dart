import 'package:manifiesto_mvp_app/infrastructure/erp/expenses/dtos/expenses_unit_of_measure_dto.dart';

enum ExpensesUnitOfMeasure {
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

  const ExpensesUnitOfMeasure(this.name);

  final String name;
}

extension ExpensesUnitOfMeasureX on ExpensesUnitOfMeasure {
  ExpensesUnitOfMeasureDto toDto() => switch (this) {
        ExpensesUnitOfMeasure.unit => ExpensesUnitOfMeasureDto.unit,
        ExpensesUnitOfMeasure.gr => ExpensesUnitOfMeasureDto.gr,
        ExpensesUnitOfMeasure.kg => ExpensesUnitOfMeasureDto.kg,
        ExpensesUnitOfMeasure.cm => ExpensesUnitOfMeasureDto.cm,
        ExpensesUnitOfMeasure.m => ExpensesUnitOfMeasureDto.m,
        ExpensesUnitOfMeasure.m2 => ExpensesUnitOfMeasureDto.m2,
        ExpensesUnitOfMeasure.cl => ExpensesUnitOfMeasureDto.cl,
        ExpensesUnitOfMeasure.l => ExpensesUnitOfMeasureDto.l,
        ExpensesUnitOfMeasure.m3 => ExpensesUnitOfMeasureDto.m3,
        ExpensesUnitOfMeasure.hour => ExpensesUnitOfMeasureDto.hour,
        ExpensesUnitOfMeasure.day => ExpensesUnitOfMeasureDto.day,
        ExpensesUnitOfMeasure.month => ExpensesUnitOfMeasureDto.month,
        ExpensesUnitOfMeasure.year => ExpensesUnitOfMeasureDto.year,
      };
}
