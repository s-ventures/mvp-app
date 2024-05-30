// [ QUOTATION, INVOICE ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_serial_number_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum DetailedInvoiceSerialNumberTypeDto {
  quotation,
  invoice;
}

extension DetailedInvoiceSerialNumberTypeDtoX on DetailedInvoiceSerialNumberTypeDto {
  DetailedInvoiceSerialNumberType toDomain() => switch (this) {
        DetailedInvoiceSerialNumberTypeDto.quotation => DetailedInvoiceSerialNumberType.quotation,
        DetailedInvoiceSerialNumberTypeDto.invoice => DetailedInvoiceSerialNumberType.invoice,
      };
}
