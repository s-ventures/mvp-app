// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE
// [ DRAFT, ISSUED, HALF_PAID, PAID, CANCELLED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/invoices/entities/invoice_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum InvoiceStatusDto {
  draft,
  issued,
  halfPaid,
  paid,
  cancelled;
}

extension InvoiceStatusDtoX on InvoiceStatusDto {
  InvoiceStatus toDomain() => switch (this) {
        InvoiceStatusDto.draft => InvoiceStatus.draft,
        InvoiceStatusDto.issued => InvoiceStatus.issued,
        InvoiceStatusDto.halfPaid => InvoiceStatus.halfPaid,
        InvoiceStatusDto.paid => InvoiceStatus.paid,
        InvoiceStatusDto.cancelled => InvoiceStatus.cancelled,
      };
}
