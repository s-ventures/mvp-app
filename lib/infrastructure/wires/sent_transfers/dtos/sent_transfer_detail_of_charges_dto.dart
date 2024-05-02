// [ SHA, OUR, BEN ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/wires/sent_transfers/entities/sent_transfer_detail_of_charges.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum SentTransferDetailOfChargesDto {
  sha,
  our,
  ben;
}

extension SentTransferDetailOfChargesDtoX on SentTransferDetailOfChargesDto {
  SentTransferDetailOfCharges toDomain() => switch (this) {
        SentTransferDetailOfChargesDto.sha => SentTransferDetailOfCharges.sha,
        SentTransferDetailOfChargesDto.our => SentTransferDetailOfCharges.our,
        SentTransferDetailOfChargesDto.ben => SentTransferDetailOfCharges.ben,
      };
}
