import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transfers/scheduled_transfers/filter_simplified_scheduled_transfers_controller.dart';
import 'package:manifiesto_mvp_app/presentation/core/extensions/date_time_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterScheduledTransfersDateRange extends ConsumerWidget {
  const FilterScheduledTransfersDateRange({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startDate = ref.watch(filterSimplifiedScheduledTransfersControllerProvider).startDate;
    final endDate = ref.watch(filterSimplifiedScheduledTransfersControllerProvider).endDate;

    final setStartDate = ref.read(filterSimplifiedScheduledTransfersControllerProvider.notifier).setStartDate;
    final setEndDate = ref.read(filterSimplifiedScheduledTransfersControllerProvider.notifier).setEndDate;

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
                  title: endDate?.formatToDayMonthYear() ?? DateTime.now().formatToDayMonthYear(),
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
