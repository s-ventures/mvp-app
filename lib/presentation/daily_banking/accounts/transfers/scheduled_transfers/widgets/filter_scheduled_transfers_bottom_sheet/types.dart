import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transfers/scheduled_transfers/filter_simplified_scheduled_transfers_controller.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transfers/scheduled_transfers/filter_simplified_scheduled_transfers_state.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterScheduledTransfersType extends ConsumerWidget {
  const FilterScheduledTransfersType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(filterSimplifiedScheduledTransfersControllerProvider).type;
    final setType = ref.read(filterSimplifiedScheduledTransfersControllerProvider.notifier).setType;

    return Row(
      children: [
        CustomChip(
          title: Text(
            'Todos',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: type == FilterSimplifiedScheduledTransfersType.all
                  ? context.color.textLight0
                  : context.color.primaryLight300,
            ),
          ),
          selected: type == FilterSimplifiedScheduledTransfersType.all,
          onSelected: (value) {
            setType(FilterSimplifiedScheduledTransfersType.all);
          },
        ),
        AppSpacing.horizontal.s3,
        CustomChip(
          title: Text(
            'En curso',
            style: context.textStyle.bodySmallSemiBold.copyWith(
              color: type == FilterSimplifiedScheduledTransfersType.inProgress
                  ? context.color.textLight0
                  : context.color.primaryLight300,
            ),
          ),
          selected: type == FilterSimplifiedScheduledTransfersType.inProgress,
          onSelected: (value) {
            setType(FilterSimplifiedScheduledTransfersType.inProgress);
          },
        ),
      ],
    );
  }
}
