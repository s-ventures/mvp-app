// ignore_for_file: constant_identifier_names

import 'package:manifiesto_mvp_app/infrastructure/daily_banking/wires/sent_transfers/dtos/sent_transfer_type_dto.dart';

enum SentTransferType {
  transfer('Transferencia'),
  between_my_accounts('Entre mis cuentas'),
  inmediate('Inmediata'),
  urgent('Urgente'),
  sepa('SEPA'),
  internal('Interna'),
  international('Internacional');

  const SentTransferType(this.name);

  final String name;
}

extension SentTransferTypeX on SentTransferType {
  SentTransferTypeDto toDto() => switch (this) {
        SentTransferType.transfer => SentTransferTypeDto.transfer,
        SentTransferType.between_my_accounts => SentTransferTypeDto.between_my_accounts,
        SentTransferType.inmediate => SentTransferTypeDto.inmediate,
        SentTransferType.urgent => SentTransferTypeDto.urgent,
        SentTransferType.sepa => SentTransferTypeDto.sepa,
        SentTransferType.internal => SentTransferTypeDto.internal,
        SentTransferType.international => SentTransferTypeDto.international,
      };
}
