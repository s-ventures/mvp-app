// [ QUOTATION, INVOICE ]

import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_serial_number_type_dto.dart';

enum DetailedInvoiceSerialNumberType {
  quotation('Quotation'),
  invoice('Invoice');

  const DetailedInvoiceSerialNumberType(this.name);

  final String name;
}

extension DetailedInvoiceSerialNumberTypeX on DetailedInvoiceSerialNumberType {
  DetailedInvoiceSerialNumberTypeDto toDto() => switch (this) {
        DetailedInvoiceSerialNumberType.quotation => DetailedInvoiceSerialNumberTypeDto.quotation,
        DetailedInvoiceSerialNumberType.invoice => DetailedInvoiceSerialNumberTypeDto.invoice,
      };
}
