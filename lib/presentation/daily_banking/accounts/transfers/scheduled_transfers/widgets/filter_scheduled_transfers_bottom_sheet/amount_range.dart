import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/transfers/scheduled_transfers/filter_simplified_scheduled_transfers_controller.dart';
import 'package:ui_kit/ui_kit.dart';

const _minAmount = 0.0;
const _maxAmount = 100000.0;

class FilterScheduledTransfersAmount extends ConsumerWidget {
  const FilterScheduledTransfersAmount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountRange = ref
            .watch(filterSimplifiedScheduledTransfersControllerProvider)
            .amountRange ??
        const RangeValues(_minAmount, _maxAmount);
    final setAmountRange = ref
        .read(filterSimplifiedScheduledTransfersControllerProvider.notifier)
        .setAmountRange;

    return CustomCard(
      outlined: true,
      child: Row(
        children: [
          Flexible(
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
                TextInput(
                  size: TextInputSize.extraSmall,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  onChanged: print,
                  fillColor: context.color.neutralLight100,
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                  suffixText: '€',
                ),
              ],
            ),
          ),
          AppSpacing.horizontal.s5,
          Flexible(
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
                TextInput(
                  size: TextInputSize.extraSmall,
                  textAlign: TextAlign.center,
                  onChanged: print,
                  fillColor: context.color.neutralLight100,
                  style: context.textStyle.bodyMediumSemiBold.copyWith(
                    color: context.color.textLight600,
                  ),
                  suffixText: '€',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
