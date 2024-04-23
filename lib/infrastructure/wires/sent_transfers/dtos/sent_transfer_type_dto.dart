// [ BASE, INMEDIATAS, URGENTES ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_type.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum SentTransferTypeDto {
  bases,
  inmediatas,
  urgentes,
}

extension SentTransferTypeDtoX on SentTransferTypeDto {
  SentTransferType toDomain() => switch (this) {
        SentTransferTypeDto.bases => SentTransferType.bases,
        SentTransferTypeDto.inmediatas => SentTransferType.inmediatas,
        SentTransferTypeDto.urgentes => SentTransferType.urgentes,
      };
}
