// [ UNIT, GR, KG, CM, M, M2, CL, L, M3, HOUR, DAY, MONTH, YEAR ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_items_unit_of_measure.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum DetailedInvoiceItemUnitOfMeasureDto {
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

extension DetailedInvoiceItemUnitOfMeasureDtoX on DetailedInvoiceItemUnitOfMeasureDto {
  DetailedInvoiceItemUnitOfMeasure toDomain() => switch (this) {
        DetailedInvoiceItemUnitOfMeasureDto.unit => DetailedInvoiceItemUnitOfMeasure.unit,
        DetailedInvoiceItemUnitOfMeasureDto.gr => DetailedInvoiceItemUnitOfMeasure.gr,
        DetailedInvoiceItemUnitOfMeasureDto.kg => DetailedInvoiceItemUnitOfMeasure.kg,
        DetailedInvoiceItemUnitOfMeasureDto.cm => DetailedInvoiceItemUnitOfMeasure.cm,
        DetailedInvoiceItemUnitOfMeasureDto.m => DetailedInvoiceItemUnitOfMeasure.m,
        DetailedInvoiceItemUnitOfMeasureDto.m2 => DetailedInvoiceItemUnitOfMeasure.m2,
        DetailedInvoiceItemUnitOfMeasureDto.cl => DetailedInvoiceItemUnitOfMeasure.cl,
        DetailedInvoiceItemUnitOfMeasureDto.l => DetailedInvoiceItemUnitOfMeasure.l,
        DetailedInvoiceItemUnitOfMeasureDto.m3 => DetailedInvoiceItemUnitOfMeasure.m3,
        DetailedInvoiceItemUnitOfMeasureDto.hour => DetailedInvoiceItemUnitOfMeasure.hour,
        DetailedInvoiceItemUnitOfMeasureDto.day => DetailedInvoiceItemUnitOfMeasure.day,
        DetailedInvoiceItemUnitOfMeasureDto.month => DetailedInvoiceItemUnitOfMeasure.month,
        DetailedInvoiceItemUnitOfMeasureDto.year => DetailedInvoiceItemUnitOfMeasure.year,
      };
}
