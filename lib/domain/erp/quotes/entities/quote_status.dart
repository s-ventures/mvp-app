// [ DRAFT, CREATED, SENT, ACCEPTED, CANCELLED ]

import 'package:manifiesto_mvp_app/infrastructure/erp/quotes/dtos/quote_status_dto.dart';

enum QuoteStatus {
  draft('draft'),
  created('created'),
  sent('sent'),
  accepted('accepted'),
  cancelled('cancelled');

  const QuoteStatus(this.name);
  final String name;
}

extension QuoteStatusX on QuoteStatus {
  QuoteStatusDto toDto() => switch (this) {
        QuoteStatus.draft => QuoteStatusDto.draft,
        QuoteStatus.created => QuoteStatusDto.created,
        QuoteStatus.sent => QuoteStatusDto.sent,
        QuoteStatus.accepted => QuoteStatusDto.accepted,
        QuoteStatus.cancelled => QuoteStatusDto.cancelled,
      };
}
