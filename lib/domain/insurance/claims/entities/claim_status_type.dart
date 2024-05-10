// ignore_for_file: constant_identifier_names

import 'package:manifiesto_mvp_app/infrastructure/insurance/claims/dtos/claim_status_type_dto.dart';

enum ClaimStatusType {
  // TODO(georgeta): pendiente de ver como se recibe del BFMF
  open('Abierto'),
  inProgress('En curso'),
  close('Finalizado');

  const ClaimStatusType(this.name);

  final String name;
}

extension ClaimStatusTypeX on ClaimStatusType {
  ClaimStatusTypeDto toDto() => switch (this) {
        ClaimStatusType.open => ClaimStatusTypeDto.open,
        ClaimStatusType.inProgress => ClaimStatusTypeDto.inProgress,
        ClaimStatusType.close => ClaimStatusTypeDto.close,
      };
}
