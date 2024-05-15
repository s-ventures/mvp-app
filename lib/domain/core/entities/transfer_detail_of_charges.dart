import 'package:manifiesto_mvp_app/infrastructure/core/dtos/transfer_detail_of_charges_dto.dart';

enum TransferDetailOfCharges {
  sha('El remitente paga todos los cargos'),
  our('El beneficiario paga todos los cargos'),
  ben('Los cargos se comparten entre ambos');

  const TransferDetailOfCharges(this.name);

  final String name;
}

extension TransferDetailOfChargesX on TransferDetailOfCharges {
  TransferDetailOfChargesDto toDto() => switch (this) {
        TransferDetailOfCharges.sha => TransferDetailOfChargesDto.sha,
        TransferDetailOfCharges.our => TransferDetailOfChargesDto.our,
        TransferDetailOfCharges.ben => TransferDetailOfChargesDto.ben,
      };
}
