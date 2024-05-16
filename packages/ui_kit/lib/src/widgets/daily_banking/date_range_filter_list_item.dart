import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:ui_kit/ui_kit.dart';

class DateRangeFilterListItem extends StatelessWidget {
  const DateRangeFilterListItem({
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
    String dateRangeFormattedToString() {
      String start;
      String separator;
      String end;

      if (startDate != null) {
        if (startDate.formatToDayMonthYear() ==
            DateTime.now().formatToDayMonthYear()) {
          start = context.loc.commonDateToday;
        }
        start = startDate.formatToDayMonthYear()!;
        separator = endDate != null ? ' - ' : '';
        start =
            endDate == null ? '${context.loc.commonDateSince} $start' : start;
      } else {
        start = '';
        separator = '';
      }

      if (endDate != null) {
        end = endDate.formatToDayMonthYear()!;
        if (endDate.formatToDayMonthYear() ==
            DateTime.now().formatToDayMonthYear()) {
          end = context.loc.commonDateToday;
        }
        end = startDate == null ? '${context.loc.commonDateUntil} $end' : end;
      } else {
        end = '';
      }

      return '$start$separator$end';
    }

    return CustomChip(
      title: Text(
        dateRangeFormattedToString(),
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
