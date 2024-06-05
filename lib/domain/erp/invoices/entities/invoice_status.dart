// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE

import 'package:manifiesto_mvp_app/infrastructure/erp/invoices/dtos/invoice_status_dto.dart';

enum InvoiceStatus {
  draft('Borrador'),
  issued('Emitido'),
  halfPaid('Pagado 50%'),
  paid('Pagado'),
  cancelled('Cancelado');

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
