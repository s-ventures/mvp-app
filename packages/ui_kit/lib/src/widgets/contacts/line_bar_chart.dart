import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LineBarChart extends StatelessWidget {
  const LineBarChart({
    required this.greenValue,
    required this.greenLabel,
    required this.yellowValue,
    required this.yellowLabel,
    required this.redValue,
    required this.redLabel,
    super.key,
  });

  final double? greenValue;
  final String? greenLabel;
  final double? yellowValue;
  final String? yellowLabel;
  final double? redValue;
  final String? redLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: ((greenValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusSuccess,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: 4,
              ),
            ),
            AppSpacing.horizontal.s2,
            Flexible(
              flex: ((yellowValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusWarning,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: 4,
              ),
            ),
            AppSpacing.horizontal.s2,
            Flexible(
              flex: ((redValue ?? 0) * 10).toInt(),
              child: Container(
                decoration: BoxDecoration(
                  color: context.color.statusError,
                  borderRadius: BorderRadius.circular(context.radius.soft),
                ),
                height: 4,
              ),
            ),
          ],
        ),
        AppSpacing.vertical.s5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (greenLabel != null)
              _Value(
                label: greenLabel!,
                color: context.color.statusSuccess,
                value: greenValue.toString(),
              ),
            if (yellowLabel != null)
              _Value(
                label: yellowLabel!,
                color: context.color.statusWarning,
                value: yellowValue.toString(),
              ),
            if (redLabel != null)
              _Value(
                label: redLabel!,
                color: context.color.statusError,
                value: redValue.toString(),
              ),
          ],
        ),
      ],
    );
  }
}

class _Value extends StatelessWidget {
  const _Value({
    required this.label,
    required this.color,
    required this.value,
  });

  final Color color;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            AppSpacing.horizontal.s2,
            Text(
              label,
              style: context.textStyle.buttonTabBar.copyWith(
                color: context.color.textLight600,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: context.textStyle.bodyMediumRegular,
        ),
      ],
    );
  }
}
