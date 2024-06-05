// [ SHA, OUR, BEN ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/transfer_detail_of_charges.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum TransferDetailOfChargesDto {
  sha,
  our,
  ben;
}

extension TransferDetailOfChargesDtoX on TransferDetailOfChargesDto {
  TransferDetailOfCharges toDomain() => switch (this) {
        TransferDetailOfChargesDto.sha => TransferDetailOfCharges.sha,
        TransferDetailOfChargesDto.our => TransferDetailOfCharges.our,
        TransferDetailOfChargesDto.ben => TransferDetailOfCharges.ben,
      };
}
