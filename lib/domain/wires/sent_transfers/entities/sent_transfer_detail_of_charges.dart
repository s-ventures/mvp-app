import 'package:manifiesto_mvp_app/infrastructure/wires/sent_transfers/dtos/sent_transfer_detail_of_charges_dto.dart';

enum SentTransferDetailOfCharges {
  sha('El remitente paga todos los cargos'),
  our('El beneficiario paga todos los cargos'),
  ben('Los cargos se comparten entre ambos');

  const SentTransferDetailOfCharges(this.name);

  final String name;
}

extension SentTransferDetailOfChargesX on SentTransferDetailOfCharges {
  SentTransferDetailOfChargesDto toDto() => switch (this) {
        SentTransferDetailOfCharges.sha => SentTransferDetailOfChargesDto.sha,
        SentTransferDetailOfCharges.our => SentTransferDetailOfChargesDto.our,
        SentTransferDetailOfCharges.ben => SentTransferDetailOfChargesDto.ben,
      };
}
