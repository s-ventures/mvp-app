// [ DRAFT, CREATED, SENT, ACCEPTED, CANCELLED ]

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/quotes/entities/quote_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum QuoteStatusDto {
  draft,
  created,
  sent,
  accepted,
  cancelled,
}

extension QuoteStatusDtoX on QuoteStatusDto {
  QuoteStatus toDomain() => switch (this) {
        QuoteStatusDto.draft => QuoteStatus.draft,
        QuoteStatusDto.created => QuoteStatus.created,
        QuoteStatusDto.sent => QuoteStatus.sent,
        QuoteStatusDto.accepted => QuoteStatus.accepted,
        QuoteStatusDto.cancelled => QuoteStatus.cancelled,
      };
}
