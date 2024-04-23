import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

enum SentTransferType {
  bases('Base'),
  inmediatas('Inmediatas'),
  urgentes('Urgentes');

  const SentTransferType(this.name);

  final String name;
}

extension SentTransferTypeX on SentTransferType {
  SentTransferTypeDto toDto() => switch (this) {
        SentTransferType.bases => SentTransferTypeDto.bases,
        SentTransferType.inmediatas => SentTransferTypeDto.inmediatas,
        SentTransferType.urgentes => SentTransferTypeDto.urgentes,
      };
}
