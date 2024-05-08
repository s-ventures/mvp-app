// ignore_for_file: constant_identifier_names

import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/claim_status_type_dto.dart';

enum ClaimStatusType {
  open('Abierto'),
  in_progress('En curso'), //TODO: pendiente de ver como se recibe del BFMF
  close('Finalizado');

  const ClaimStatusType(this.name);

  final String name;
}

extension ClaimStatusTypeX on ClaimStatusType {
  ClaimStatusTypeDto toDto() => switch (this) {
        ClaimStatusType.open => ClaimStatusTypeDto.open,
        ClaimStatusType.in_progress => ClaimStatusTypeDto.in_progress,
        ClaimStatusType.close => ClaimStatusTypeDto.close,
      };
}
