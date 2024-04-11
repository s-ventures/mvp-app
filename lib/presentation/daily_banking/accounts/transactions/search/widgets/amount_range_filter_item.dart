import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AmountRangeFilterItem extends StatelessWidget {
  const AmountRangeFilterItem({
    required this.amountFrom,
    required this.amountTo,
    required this.onClear,
    super.key,
  });

  final double amountFrom;
  final double amountTo;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      title: Text(
        '${amountFrom.toCurrency(plusSign: false)} - ${amountTo.toCurrency(plusSign: false)}',
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
