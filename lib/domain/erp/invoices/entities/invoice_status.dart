// [ DRAFT, ISSUED, HALF_PAID, PAID, CANCELLED ]

import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_status_dto.dart';

enum InvoiceStatus {
  draft('draft'),
  issued('issued'),
  halfPaid('half paid'),
  paid('paid'),
  cancelled('cancelled');

  const InvoiceStatus(this.name);
  final String name;
}

extension InvoiceStatusX on InvoiceStatus {
  InvoiceStatusDto toDto() => switch (this) {
        InvoiceStatus.draft => InvoiceStatusDto.draft,
        InvoiceStatus.issued => InvoiceStatusDto.issued,
        InvoiceStatus.halfPaid => InvoiceStatusDto.halfPaid,
        InvoiceStatus.paid => InvoiceStatusDto.paid,
        InvoiceStatus.cancelled => InvoiceStatusDto.cancelled,
      };
}
