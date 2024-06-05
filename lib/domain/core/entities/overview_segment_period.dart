import 'package:manifiesto_mvp_app/infrastructure/core/dtos/overview_segment_period_dto.dart';

enum OverviewSegmentPeriod {
  monthly('Mes'),
  quarterly('Trimestre'),
  yearly('Año');

  const OverviewSegmentPeriod(this.name);

  final String name;
}

extension OverviewSegmentPeriodX on OverviewSegmentPeriod {
  OverviewSegmentPeriodDto toDto() => switch (this) {
        OverviewSegmentPeriod.monthly => OverviewSegmentPeriodDto.monthly,
        OverviewSegmentPeriod.quarterly => OverviewSegmentPeriodDto.quarterly,
        OverviewSegmentPeriod.yearly => OverviewSegmentPeriodDto.yearly,
      };
}
