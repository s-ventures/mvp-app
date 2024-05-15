import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/erp/stakeholders/entities/employment_status.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum EmploymentStatusDto {
  unEmployed,
  freelancer,
  worker,
  retiree,
  other,
}

extension EmploymentStatusDtoX on EmploymentStatusDto {
  EmploymentStatus toDomain() => switch (this) {
        EmploymentStatusDto.unEmployed => EmploymentStatus.unEmployed,
        EmploymentStatusDto.freelancer => EmploymentStatus.freelancer,
        EmploymentStatusDto.worker => EmploymentStatus.worker,
        EmploymentStatusDto.retiree => EmploymentStatus.retiree,
        EmploymentStatusDto.other => EmploymentStatus.other,
      };
}
