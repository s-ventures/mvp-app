import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/presentation/core/extensions/date_time_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class DateRange extends ConsumerWidget {
  const DateRange({
    required this.startDate,
    required this.endDate,
    required this.setStartDate,
    required this.setEndDate,
    super.key,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final ValueChanged<DateTime> setStartDate;
  final ValueChanged<DateTime> setEndDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomCard(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Desde',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: startDate?.formatToDayMonthYear() ?? '',
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                  onPressed: () async {
                    final startDateSelected = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );

                    if (startDateSelected != null) {
                      setStartDate(startDateSelected);
                    }
                  },
                ),
              ],
            ),
          ),
          AppSpacing.horizontal.s5,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hasta',
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: endDate?.formatToDayMonthYear() ?? '',
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                  onPressed: () async {
                    final endDateSelected = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );

                    if (endDateSelected != null) {
                      setEndDate(endDateSelected);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
