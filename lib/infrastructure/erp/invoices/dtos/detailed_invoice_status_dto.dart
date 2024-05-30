// [ RECEIVED, HALF_PAID, PAID, CANCELLED, DRAFT ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/detailed_invoice_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum DetailedInvoiceStatusDto {
  draft,
  issued,
  halfPaid,
  paid,
  cancelled;
}

extension DetailedInvoiceStatusDtoX on DetailedInvoiceStatusDto {
  DetailedInvoiceStatus toDomain() => switch (this) {
        DetailedInvoiceStatusDto.draft => DetailedInvoiceStatus.draft,
        DetailedInvoiceStatusDto.issued => DetailedInvoiceStatus.issued,
        DetailedInvoiceStatusDto.halfPaid => DetailedInvoiceStatus.halfPaid,
        DetailedInvoiceStatusDto.paid => DetailedInvoiceStatus.paid,
        DetailedInvoiceStatusDto.cancelled => DetailedInvoiceStatus.cancelled,
      };
}
