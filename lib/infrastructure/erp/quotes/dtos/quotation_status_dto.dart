// TODO(georgeta): Pendiente de definir con Negocio y actualizar en CORE
// [ DRAFT, CREATED, SENT, CANCELLED ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quotation_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum QuotationStatusDto {
  draft,
  created,
  sent,
  cancelled;
}

extension QuotationStatusDtoX on QuotationStatusDto {
  QuotationStatus toDomain() => switch (this) {
        QuotationStatusDto.draft => QuotationStatus.draft,
        QuotationStatusDto.created => QuotationStatus.created,
        QuotationStatusDto.sent => QuotationStatus.sent,
        QuotationStatusDto.cancelled => QuotationStatus.cancelled,
      };
}
