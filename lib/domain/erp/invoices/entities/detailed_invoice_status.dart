// [ DRAFT, ISSUED, HALF_PAID, PAID, CANCELLED ]

import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/detailed_invoice_status_dto.dart';

enum DetailedInvoiceStatus {
  draft('Draft'),
  issued('Issued'),
  halfPaid('Half Paid'),
  paid('Paid'),
  cancelled('Cancelled');

  const DetailedInvoiceStatus(this.name);

  final String name;
}

extension DetailedInvoiceStatusX on DetailedInvoiceStatus {
  DetailedInvoiceStatusDto toDto() => switch (this) {
        DetailedInvoiceStatus.draft => DetailedInvoiceStatusDto.draft,
        DetailedInvoiceStatus.issued => DetailedInvoiceStatusDto.issued,
        DetailedInvoiceStatus.halfPaid => DetailedInvoiceStatusDto.halfPaid,
        DetailedInvoiceStatus.paid => DetailedInvoiceStatusDto.paid,
        DetailedInvoiceStatus.cancelled => DetailedInvoiceStatusDto.cancelled,
      };
}
