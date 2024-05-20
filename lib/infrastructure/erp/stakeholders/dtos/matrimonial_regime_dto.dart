import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/matrimonial_regime.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum MatrimonialRegimeDto {
  maritalPartnership,
  separationProperty,
  participationRegime,
}

extension MatrimonialRegimeDtoX on MatrimonialRegimeDto {
  MatrimonialRegime toDomain() => switch (this) {
        MatrimonialRegimeDto.maritalPartnership => MatrimonialRegime.maritalPartnership,
        MatrimonialRegimeDto.separationProperty => MatrimonialRegime.separationProperty,
        MatrimonialRegimeDto.participationRegime => MatrimonialRegime.participationRegime,
      };
}
