// [ MONTHLY, QUARTERLY, YEARLY ]

import 'package:json_annotation/json_annotation.dart';
import 'package:manifiesto_mvp_app/domain/core/entities/overview_segment_period.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum OverviewSegmentPeriodDto {
  monthly,
  quarterly,
  yearly,
}

extension OverviewSegmentPeriodDtoX on OverviewSegmentPeriodDto {
  OverviewSegmentPeriod toDomain() => switch (this) {
        OverviewSegmentPeriodDto.monthly => OverviewSegmentPeriod.monthly,
        OverviewSegmentPeriodDto.quarterly => OverviewSegmentPeriod.quarterly,
        OverviewSegmentPeriodDto.yearly => OverviewSegmentPeriod.yearly,
      };
}
