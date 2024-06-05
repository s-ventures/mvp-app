// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE

import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quotation_status_dto.dart';

enum QuotationStatus {
  draft('Borrador'),
  created('Creado'),
  sent('Enviado'),
  cancelled('Cancelado');

  const QuotationStatus(this.name);

  final String name;
}

extension QuotationStatusX on QuotationStatus {
  QuotationStatusDto toDto() => switch (this) {
        QuotationStatus.draft => QuotationStatusDto.draft,
        QuotationStatus.created => QuotationStatusDto.created,
        QuotationStatus.sent => QuotationStatusDto.sent,
        QuotationStatus.cancelled => QuotationStatusDto.cancelled,
      };
}
