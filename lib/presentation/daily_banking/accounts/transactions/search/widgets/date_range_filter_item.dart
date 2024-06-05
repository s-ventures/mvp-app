import 'package:flutter/material.dart';
import 'package:manifiesto_mvp_app/presentation/core/extensions/date_time_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class DateRangeFilterItem extends StatelessWidget {
  const DateRangeFilterItem({
    required this.startDate,
    required this.endDate,
    required this.onClear,
    super.key,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      title: Text(
        '${startDate?.formatToDayMonthYear()} - ${endDate?.formatToDayMonthYear() ?? 'Hoy'}',
        style: context.textStyle.bodySmallSemiBold.copyWith(
          color: context.color.primaryLight300,
        ),
      ),
      trailingIcon: IconAssets.xMark,
      onTrailingIconPressed: onClear,
      backgroundColor: context.color.backgroundLight0,
    );
  }
}
