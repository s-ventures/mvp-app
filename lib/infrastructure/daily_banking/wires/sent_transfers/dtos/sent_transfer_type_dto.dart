// [ BASE, INMEDIATAS, URGENTES ]

// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/daily_banking/wires/sent_transfers/entities/sent_transfer_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum SentTransferTypeDto {
  transfer,
  between_my_accounts,
  inmediate,
  urgent,
  sepa,
  internal,
  international;
}

extension SentTransferTypeDtoX on SentTransferTypeDto {
  SentTransferType toDomain() => switch (this) {
        SentTransferTypeDto.transfer => SentTransferType.transfer,
        SentTransferTypeDto.between_my_accounts => SentTransferType.between_my_accounts,
        SentTransferTypeDto.inmediate => SentTransferType.inmediate,
        SentTransferTypeDto.urgent => SentTransferType.urgent,
        SentTransferTypeDto.sepa => SentTransferType.sepa,
        SentTransferTypeDto.internal => SentTransferType.internal,
        SentTransferTypeDto.international => SentTransferType.international,
      };
}
