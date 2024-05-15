import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterSentTransfersAmount extends StatelessWidget {
  const FilterSentTransfersAmount({
    required this.amountFrom,
    required this.amountTo,
    required this.setAmountFrom,
    required this.setAmountTo,
    super.key,
  });

  final int? amountFrom;
  final int? amountTo;
  final ValueChanged<int> setAmountFrom;
  final ValueChanged<int> setAmountTo;

  @override
  Widget build(BuildContext context) {
    final amountFromController = TextEditingController(
      text: amountFrom?.toStringAsFixed(2).replaceAll('.', ','),
    );
    final amountToController = TextEditingController(
      text: amountTo?.toStringAsFixed(2).replaceAll('.', ','),
    );

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
                AmountInput(
                  controller: amountFromController,
                  suffixText: '€',
                  onChanged: (value) {
                    final parsedValue = int.tryParse(value);
                    if (parsedValue != null) {
                      setAmountFrom(parsedValue);
                      amountFromController.text = value;
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
                AmountInput(
                  controller: amountToController,
                  suffixText: '€',
                  onChanged: (value) {
                    final parsedValue = int.tryParse(value);
                    if (parsedValue != null) {
                      setAmountTo(parsedValue);
                      amountToController.text = value;
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
