import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterAmountRange extends StatelessWidget {
  const FilterAmountRange({
    required this.from,
    required this.to,
    required this.setFrom,
    required this.setTo,
    super.key,
  });

  final double? from;
  final double? to;
  final ValueChanged<double> setFrom;
  final ValueChanged<double> setTo;

  @override
  Widget build(BuildContext context) {
    final amountFromController = TextEditingController(
      text: from?.toStringAsFixed(2).replaceAll('.', ','),
    );
    final amountToController = TextEditingController(
      text: to?.toStringAsFixed(2).replaceAll('.', ','),
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
                    final parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      setFrom(parsedValue);
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
                    final parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      setTo(parsedValue);
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
