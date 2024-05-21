import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class DateRangeFilter extends StatefulWidget {
  const DateRangeFilter({
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
  State<DateRangeFilter> createState() => _DateRangeFilterState();
}

class _DateRangeFilterState extends State<DateRangeFilter> {
  DateTime? startDateSelected;
  DateTime? endDateSelected;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.commonDateSince,
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: startDateSelected != null
                      ? startDateSelected.formatToDayMonthYear()
                      : widget.startDate?.formatToDayMonthYear() ?? '',
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                  onPressed: () async {
                    startDateSelected = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );

                    if (startDateSelected != null) {
                      widget.setStartDate(startDateSelected!);
                      setState(() {});
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
                  context.loc.commonDateUntil,
                  style: context.textStyle.bodySmallRegular.copyWith(
                    color: context.color.textLight600,
                  ),
                ),
                AppSpacing.vertical.s2,
                Button(
                  title: endDateSelected != null
                      ? endDateSelected.formatToDayMonthYear()
                      : widget.endDate?.formatToDayMonthYear() ?? '',
                  size: ButtonSize.extraSmall,
                  background: context.color.neutralLight100,
                  foreground: context.color.textLight600,
                  expand: true,
                  onPressed: () async {
                    endDateSelected = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );

                    if (endDateSelected != null) {
                      widget.setEndDate(endDateSelected!);
                      setState(() {});
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
