import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manifiesto_mvp_app/application/daily_banking/accounts/wires/periodic_orders/filter/filter_simplified_periodic_orders_controller.dart';
import 'package:ui_kit/ui_kit.dart';

const _minAmount = 0.0;
const _maxAmount = 100000.0;

class FilterPeriodicOrdersAmount extends ConsumerWidget {
  const FilterPeriodicOrdersAmount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amountRange = ref
            .watch(filterSimplifiedPeriodicOrdersControllerProvider)
            .amountRange ??
        const RangeValues(_minAmount, _maxAmount);
    final setAmountRange = ref
        .read(filterSimplifiedPeriodicOrdersControllerProvider.notifier)
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
                  initialValue: amountRange.start.toInt().toString(),
                  controller: TextEditingController(
                    text: amountRange.start.toInt().toString(),
                  ),
                  keyboardType: TextInputType.number,
                  size: TextInputSize.extraSmall,
                  fillColor: Colors.white,
                  suffixText: '€',
                  maxLines: 1,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setAmountRange(
                        RangeValues(double.parse(value), amountRange.end),
                      );
                    }
                  },
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
                  initialValue: amountRange.end.toInt().toString(),
                  controller: TextEditingController(
                    text: amountRange.end.toInt().toString(),
                  ),
                  keyboardType: TextInputType.number,
                  size: TextInputSize.extraSmall,
                  fillColor: Colors.white,
                  suffixText: '€',
                  maxLines: 1,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setAmountRange(
                        RangeValues(amountRange.start, double.parse(value)),
                      );
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
