import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AmountRangeFilterItem extends StatelessWidget {
  const AmountRangeFilterItem({
    required this.amountRange,
    required this.onClear,
    super.key,
  });

  final RangeValues amountRange;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      title: Text(
        '${amountRange.start.toCurrency()} - ${amountRange.end.toCurrency()}',
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
