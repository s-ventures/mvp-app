import 'package:manifiesto_mvp_app/infrastructure/insurances/claims/dtos/claim_status_type_dto.dart';

enum ClaimStatusType {
  open('En curso'),
  close('Cerrado');

  const ClaimStatusType(this.name);

  final String name;
}

extension ClaimStatusTypeX on ClaimStatusType {
  ClaimStatusTypeDto toDto() => switch (this) {
        ClaimStatusType.open => ClaimStatusTypeDto.open,
        ClaimStatusType.close => ClaimStatusTypeDto.close,
      };
}
