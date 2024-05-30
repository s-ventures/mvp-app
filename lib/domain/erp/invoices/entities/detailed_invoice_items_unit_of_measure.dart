import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_items_unit_of_measure_dto.dart';

enum DetailedInvoiceItemUnitOfMeasure {
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

  const DetailedInvoiceItemUnitOfMeasure(this.name);

  final String name;
}

extension DetailedInvoiceItemUnitOfMeasureX on DetailedInvoiceItemUnitOfMeasure {
  DetailedInvoiceItemUnitOfMeasureDto toDto() => switch (this) {
        DetailedInvoiceItemUnitOfMeasure.unit => DetailedInvoiceItemUnitOfMeasureDto.unit,
        DetailedInvoiceItemUnitOfMeasure.gr => DetailedInvoiceItemUnitOfMeasureDto.gr,
        DetailedInvoiceItemUnitOfMeasure.kg => DetailedInvoiceItemUnitOfMeasureDto.kg,
        DetailedInvoiceItemUnitOfMeasure.cm => DetailedInvoiceItemUnitOfMeasureDto.cm,
        DetailedInvoiceItemUnitOfMeasure.m => DetailedInvoiceItemUnitOfMeasureDto.m,
        DetailedInvoiceItemUnitOfMeasure.m2 => DetailedInvoiceItemUnitOfMeasureDto.m2,
        DetailedInvoiceItemUnitOfMeasure.cl => DetailedInvoiceItemUnitOfMeasureDto.cl,
        DetailedInvoiceItemUnitOfMeasure.l => DetailedInvoiceItemUnitOfMeasureDto.l,
        DetailedInvoiceItemUnitOfMeasure.m3 => DetailedInvoiceItemUnitOfMeasureDto.m3,
        DetailedInvoiceItemUnitOfMeasure.hour => DetailedInvoiceItemUnitOfMeasureDto.hour,
        DetailedInvoiceItemUnitOfMeasure.day => DetailedInvoiceItemUnitOfMeasureDto.day,
        DetailedInvoiceItemUnitOfMeasure.month => DetailedInvoiceItemUnitOfMeasureDto.month,
        DetailedInvoiceItemUnitOfMeasure.year => DetailedInvoiceItemUnitOfMeasureDto.year,
      };
}
